do
local function run(msg, matches)
    local chat_id =  msg.to.id
     local data = load_data(_config.moderation.data)
    if matches[1] == 'lock' then
     if not is_momod(msg) then
    return ""
   end
    local data = load_data(_config.moderation.data)
   local lock_tag = data[tostring(msg.to.id)]['lock_tag']
if data[tostring(msg.to.id)]['lock_tag'] then
  if lock_tag == 'yes' then
    return 'تگ در حال حاظر قفل می باشد'
  else
    data[tostring(msg.to.id)]['lock_tag'] = 'yes'
    save_data(_config.moderation.data, data)
    local hash = 'lock_tag:'..msg.to.id
    redis:set(hash, true)
     return "تگ قفل شد"
    end
  end
end

— By UB Channel
— Edited By : MohammadArak https://telegram.me/mohammadarak
— Bot ID: @avirabot
—      /\  \\        // ||  //------\\        /\
—     //\\  \\      //  || ||       ||       //\\
—    //__\\  \\    //   || ||______//       //__\\
—   //____\\  \\  //    || ||      \\      //____\\
—  //      \\  \\//     || ||       \\    //      \\
— //        \\  \/      || ||        \\  //        \\

local chat_id =  msg.to.id
     local data = load_data(_config.moderation.data)
    if matches[1] == 'unlock' then
   if not is_momod(msg) then
  return ""
 end
    local data = load_data(_config.moderation.data)
   local lock_tag = data[tostring(msg.to.id)]['lock_tag']
if data[tostring(msg.to.id)]['lock_tag'] then
  if lock_tag == 'no' then
    return 'تگ در حال حاظر قفل نمی باشد'
  else
    data[tostring(msg.to.id)]['lock_tag'] = 'no'
    save_data(_config.moderation.data, data)
    local hash = 'lock_tag:'..msg.to.id
    redis:set(hash, true)
     return "تگ باز شد"
    end
  end
end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
    if data[tostring(msg.to.id)]['lock_tag'] then
    local lock_tag = tonumber(data[tostring(msg.to.id)]['lock_tag'])
    local hash = 'lock_tag:'..msg.to.id
    if redis:get(hash) or lock_tag == 'yes'  then
    if not is_momod(msg) then
    if msg.to.type == 'channel' then 
    if msg.text:match("#(.*)") or msg.text:match("@(.*)") or msg.text:match("@") or msg.text:match("#") then — برای تغییر پترن حساس به جای # و @ پترن مورد نظر خود را بگذارید
    delete_msg(msg.id, ok_cb, false)
    elseif msg.to.type == 'chat' or strict == "yes" then
     if msg.text:match("#(.*)") or msg.text:match("@(.*)") or msg.text:match("@") or msg.text:match("#") then — برای تغییر پترن حساس به جای # و @ پترن مورد نظر خود را بگذارید
    delete_msg(msg.id, ok_cb, false)
    kick_user(msg.from.id, msg.to.id)
                   end
                end
             end
          end
       end 
    end
end
end
return {
    patterns = {
        "^[!/#](lock) (.*)$",
        "^[!/#](unlock) (.*)$",
        "#(.*)",
        "@(.*)",
    },
    run = run
}
end
