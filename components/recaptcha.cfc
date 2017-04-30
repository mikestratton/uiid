<cfcomponent name="recaptcha">
    <cffunction name="makeRecaptcha" returntype="string" output="yes">
        <cfargument name="sitekey" type="string" required="No" default=""><!--- Will default to Application.recaptcha.sitekey if exists --->
		<cfargument name="callback" type="string" required="No" default=""><!--- Will default to Application.recaptcha.callback if exists --->
        <cfif not LEN(trim(Arguments.sitekey)) AND isDefined("Application.recaptcha.sitekey")>
            <cfset Arguments.sitekey = Application.recaptcha.sitekey>
        </cfif>
		 <cfif not LEN(trim(Arguments.callback)) AND isDefined("Application.recaptcha.callback")>
            <cfset Arguments.callback = Application.recaptcha.callback>
        </cfif>
        <div class="g-recaptcha" data-sitekey="#Arguments.sitekey#" data-callback="#Arguments.callback#"></div>
    </cffunction>
    <cffunction name="isRecaptchaGood" returntype="boolean" output="no">
    <cfargument name="Response" type="string" required="No" default=""><!--- Will default to FORM["g-recaptcha-response"] if exists --->
    <cfargument name="Secret" type="string" required="No" default=""><!--- Will default to Application.recaptcha.secret if exists --->
	<cfset var request_url = "https://www.google.com/recaptcha/api/siteverify">
	<cfset var APIResponse = 1>
	<cfset var httpResponse = "">
	<cfif not LEN(trim(Arguments.Response)) AND StructKeyExists(Form, "g-recaptcha-response")>
		<cfset Arguments.Response = FORM["g-recaptcha-response"]>
	</cfif>
	<cfif not LEN(trim(Arguments.Secret)) AND isDefined("Application.recaptcha.secret")>
		<cfset Arguments.Secret = Application.recaptcha.secret>
	<cfelseif not LEN(trim(Arguments.Secret))>
		<cfset Arguments.Secret = ""><!--- option: set to global default --->
	</cfif>
	<cfif isDefined("Application.recaptcha.enabled") AND NOT YesNoFormat(Application.recaptcha.enabled)>
		<cfset APIResponse = 1><!--- not enabled; return success --->
	<cfelseif not len(trim(Arguments.Secret))>
		<cfset APIResponse = 1><!--- secret parameter not configured; return success --->
	<cfelseif not len(trim(Arguments.Response))>
		<cfset APIResponse = 0><!--- enabled, but empty response?  Reject & do not perform API request --->
	<cfelse>
		<cfset request_url = request_url & "?secret=" & trim(Arguments.Secret) & "&response=" & trim(Arguments.Response)>		
		<cfhttp url="#request_url#" port="443" METHOD="get" USERAGENT="#CGI.Server_Name# reCaptcha" getAsBinary="never"></cfhttp>
			<CFSET httpResponse = CFHTTP.FileContent>
		<cfif isJson(httpResponse)><!--- Check response for {"success":true} --->
			<cfset httpResponse = deserializeJSON(httpResponse)>
			<cfset APIResponse = isStruct(httpResponse) AND StructKeyExists(httpResponse, "success") AND YesNoFormat(httpResponse.success)>
		<cfelse>
			<cfset APIResponse = 1><!--- Downtime happens; Possible API Problem; Temporary success --->
		</cfif>
	</cfif>	
	<cfreturn YesNoFormat(APIResponse)>
</cffunction>
</cfcomponent>