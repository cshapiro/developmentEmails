<h1>Development Emails</h1>
<p>This plugin extend the sendEmail() cfwheels function
when you are in design,development or maintenance mode. </p>
<p>Set your variables below to override the sendEmail arguments. 
If you leave any of them blank except cc and bcc, the system will default to the attributes you originally set.</p>
<p>If you leave cc and bcc blank, those fields will blank out the attributes set in the system.</p>

<h2>Set your design/development email variables</h2>

<cfif isDefined('FORM.createdAt')>
<cfoutput>#insertDevelopmentEmailsRecord(FORM)#</cfoutput>
<p>Thank you. Your database table has been created and your sendEmail() function will now use these attributes.</p>

<cfelse> 
<cfform name="developmentemailsform" action="#CGI.script_name & '?' & CGI.query_string#">
<table>
<tr><td style="text-align:right;">To:</td><td><cfinput name="de[toemail]" id="de[toemail]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">From:</td><td><cfinput name="de[fromemail]" id="de[fromemail]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">cc:</td><td><cfinput name="de[cc]" id="de[cc]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">bcc:</td><td><cfinput name="de[bcc]" id="de[bcc]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">failto:</td><td><cfinput name="de[failto]" id="de[failto]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">replyto:</td><td><cfinput name="de[replyto]" id="de[replyto]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">server:</td><td><cfinput name="de[server]" id="de[server]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">username:</td><td><cfinput name="de[username]" id="de[username]"  type="text" size="100"  /></td></tr>
<tr><td style="text-align:right;">password:</td><td><cfinput name="de[password]" id="de[password]"  type="password" size="100"  /></td></tr>
<tr><td></td><td><cfinput name="createdAt" id="createdAt"  type="hidden" value="#Now()#" /> <cfinput name="btnSubmit" id="btnSubmit"  type="submit" value="Submit" /></td></tr>
</table>
</cfform>
</cfif>



<p>&nbsp;</p>
<h2>Project Home</h2>
<a href="https://github.com/cshapiro/developmentemails">https://github.com/cathyshapiro/developmentemails</a> 		</div>
	</div>