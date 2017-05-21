-- Configure the University login details
local umrnet = Map("umrnet", translate("Uni Marburg Login"))

function umrnet.on_after_commit (self)
    os.execute ("/etc/init.d/umrnet restart >/dev/null 2>/dev/null")
end

local s_eth1 = umrnet:section(NamedSection, "eth1", "umrnet", translate("Student account Login"))
    local o_user = s_eth1:option(Value, "user", translate("Student email"), translate("For Marburg, this is your @students.uni-marburg.de address"))
    local o_pass = s_eth1:option(Value, "password", translate("Password"))
    o_pass.password = true

-- Network MAC Spoofing
local network = Map("network", translate("Network settings given to HRZ"))

local s_netdetails = network:section(NamedSection, "wan", "interface", translate("Network details"))
    local o_mac = s_netdetails:option(Value, "macaddr", translate("MAC Address"), translate("This is the address of the network adapter you gave to the HRZ (we'll pretend we are the same device)"))

    o_mac.datatype = "macaddr"
return umrnet, network 
