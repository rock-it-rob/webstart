<%@ page contentType="application/x-java-jnlp-file" language="java" import="java.sql.*"%>
<%@ page session="true"%>
<%response.setDateHeader ("Expires", 0); //prevents caching at the proxy server%>
<%
  long time = System.currentTimeMillis();
  String sessid = String.valueOf(time);
%>
<jnlp codebase="http://localhost:8080/forms/java/">
  <information>
    <title>Webstart Test Oracle Forms 11g</title>
    <vendor>develishdevelopment.wordpress.com</vendor>
    <description>Webstart Test Oracle Forms 11g</description>
  </information>
  <security>
    <all-permissions/>
  </security>
  <update check="timeout" policy="always"/>
  <resources>
    <j2se version="1.6.0"/>
    <jar href="frmall.jar" download="eager" main="true"/>
  </resources>
  <applet-desc name="Webstart Test Oracle Forms 11g" main-class="oracle.forms.engine.Main" width="990" height="640">
    <param name="background" value="no"/>
    <param name="logo" value="no"/>
    <param name="serverApp" value="default"/>
    <param name="lookAndFeel" value="oracle"/>
    <param name="allow_debug" value="true"/>
    <param name="separateFrame" value="false"/>
    <param name="em_mode" value="1"/>
    <param name="latencyCheck" value="true"/>
    <param name="networkRetries" value="240"/>
    <param name="serverArgs" value="module=test.fmx useSDI=yes"/>
    <param name="serverURL" value="http://localhost:8080/forms/lservlet?ifcfs=http://localhost:8080/forms/frmservlet?config=jpi&ifsessid=formsapp.<%=sessid%>"/>
    <param name="colorScheme" value="teal"/>
    <param name="splashScreen" value="no"/>
    <param name="dontTruncateTabs" value="true"/>
  </applet-desc>
</jnlp>