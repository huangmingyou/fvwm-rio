-- udp_md5.lua
-- 一个 Wireshark Lua 插件，用于显示每个 UDP 包的载荷 MD5

-- 加载 md5 库
local md5 = require("md5")

-- 创建新的协议
local udp_md5_proto = Proto("udp_md5", "UDP Payload MD5")

-- 定义字段
local f_md5 = ProtoField.string("udp_md5.payload_md5", "UDP Payload MD5")

-- 注册字段
udp_md5_proto.fields = { f_md5 }

-- 解析函数
function udp_md5_proto.dissector(buffer, pinfo, tree)
    -- 仅处理 UDP 包
--    if pinfo.port_type ~= 1 then return end -- 1 = UDP, 0 = TCP

    local udp_payload_offset = 42 -- UDP 首部长度为 8 字节
    local udp_payload_length = buffer:len() - udp_payload_offset
    if udp_payload_length <= 0 then return end

    local payload = buffer(udp_payload_offset):bytes():raw()
    local digest = md5.sumhexa(payload)

    -- 添加到协议树
    local subtree = tree:add(udp_md5_proto, buffer(), "UDP Payload MD5")
    subtree:add(f_md5, digest)

    -- 修改 Info 栏
    pinfo.cols.info:append(" | MD5: " .. digest)
end

-- 注册 dissector 到 UDP 协议（UDP dissector 的 post-dissector）
register_postdissector(udp_md5_proto)

