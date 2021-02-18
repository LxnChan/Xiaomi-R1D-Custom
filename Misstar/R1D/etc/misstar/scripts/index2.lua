module("luci.controller.web.index2", package.seeall) 
function index()      
     local page   = node("web","misstar")          
     page.target  = firstchild()         
     page.title   = ("")          
     page.order   = 100          
     page.sysauth = "admin"          
     page.sysauth_authenticator = "jsonauth"          
     page.index = true          
     entry({"web", "misstar", "index"}, template("web/setting/misstar/index"), _("Tools"), 81)          
     entry({"web", "misstar", "add"}, template("web/setting/misstar/add"), _("Tools"), 82)          
     entry({"web", "misstar"}, alias("web","misstar","index"), _("Tools"), 80)          
     entry({"web", "misstar", "ss"}, template("web/setting/applications/ss/html/ss"), _("Tools"), 85)          
     entry({"web", "misstar","frp"}, template("web/setting/applications/frp/html/frp"), _("Tools"), 85)          
     entry({"web", "misstar","aliddns"}, template("web/setting/applications/aliddns/html/aliddns"), _("Tools"), 85)  
     entry({"web", "misstar","adm"}, template("web/setting/applications/adm/html/adm"), _("Tools"), 85)    
     entry({"web", "misstar","koolproxy"}, template("web/setting/applications/koolproxy/html/koolproxy"), _("Tools"), 85)
     entry({"web", "misstar","rm"}, template("web/setting/applications/rm/html/rm"), _("Tools"), 85)
     entry({"web", "misstar","aria"}, template("web/setting/applications/aria2/html/aria"), _("Tools"), 85)
     entry({"web", "misstar","aria2"}, template("web/setting/applications/aria2/html/aria2"), _("Tools"), 85) 
     entry({"web", "misstar","webshell"}, template("web/setting/applications/webshell/html/webshell"), _("Tools"), 85)
     entry({"web", "misstar","pptpd"}, template("web/setting/applications/pptpd/html/pptpd"), _("Tools"), 85)  
     entry({"web", "misstar","ftp"}, template("web/setting/applications/ftp/html/ftp"), _("Tools"), 85)
     entry({"web", "misstar","kms"}, template("web/setting/applications/kms/html/kms"), _("Tools"), 85)  
end