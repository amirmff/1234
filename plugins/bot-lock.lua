local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_bots'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['lock_bots']
            end
        end
    end
local function isAntiBotEnabled (chatId)
  local hash = 'bot:lock:'..chatId
  local lock = redis:get(hash)
  return lock
end
local function enableAntiBot (chatId)
local hash = 'bot:lock:'..chatId
redis:set(hash, true)
end
local function disableAntiBot (chatId)
local hash = 'bot:lock:'..chatId
redis:del(hash)
end
local function isABot (user)
  local binFlagIsBot = 4096
  local result = bit32.band(user.flags, binFlagIsBot)
  return result == binFlagIsBot
end

local function isABotBadWay (user)
  local username = user.username or ''
  return username:match("[Bb]ot$")
end
local function kickUser(userId, chatId)
local channel = 'channel#id'..chatId
local user = 'user#id'..userId
  channel_kick_user(channel, user, function (data, success, result)
    if success ~= 1 then
      print('I can\'t kick '..data.user..' but should be kicked')
    end
  end, {chat=chat, user=user})
end
