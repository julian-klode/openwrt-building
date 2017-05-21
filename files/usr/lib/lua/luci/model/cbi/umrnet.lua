-- Configure the University login details
local umrnet = Map("umrnet", translate("University Internet Settings"))

function umrnet.on_after_commit (self)
    os.execute ("/etc/init.d/umrnet restart >/dev/null 2>/dev/null")
end

local s_eth1 = umrnet:section(NamedSection, "eth1", "umrnet", translate("Student account Login"), translate("Your internet connectivity is linked to your student account, so you need to enter your login details for this device to connect."))
    local o_user = s_eth1:option(Value, "user", translate("Student email"), translate("For Marburg, this is your @students.uni-marburg.de address"))
    local o_pass = s_eth1:option(Value, "password", translate("Password"))
    o_pass.password = true

-- Network MAC Spoofing
local network = Map("network")

local s_netdetails = network:section(NamedSection, "wan", "interface", translate("Network details"), translate("When you registered your device, you had to give the HRZ some details. Enter them here."))
    local o_mac = s_netdetails:option(Value, "macaddr", translate("MAC Address"), translate("The ID of the network adapter previously used / registered with HRZ. Has a form like AB:AB:AB:AB:AB:AB or AB-AB-AB-AB-AB-AB"))

    o_mac.datatype = "macaddr"
return umrnet, network 
