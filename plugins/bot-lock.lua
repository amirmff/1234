local function run (msg, matches)

  if matches[1] ~= 'chat_add_user' and matches[1] ~= 'chat_add_user_link' then
    if msg.to.type ~= 'chat' and msg.to.type ~= 'channel' then
      return nil
    end
  end

  local chatId = msg.to.id
  if matches[1] == 'lock' then
    enableAntiBot(chatId)
  return 'bot has been locked'
  end
  if matches[1] == 'unlock' then
    disableAntiBot(chatId)
  return 'bot has been unlocked'
  end
  if matches[1] == 'chat_add_user' or matches[1] == 'chat_add_user_link' then
    local user = msg.action.user or msg.from
    if isABotBadWay(user) then
      print("It' a bot!")
      if isAntiBotEnabled(chatId) then
        print('bot is locked')
        local userId = user.id
        if not isBotAllowed(userId, chatId) then
          kickUser(userId, chatId)
        else
          print('')
        end
      end
    end
  end
end

return {
  description = 'Anti bot',
  usage = {
    '[/!#]lock bot: locked add bots to supergroup',
    '[/!#]unlock bot: unlock add bots to supergroup'
  },
  patterns = {
    '^[/!#](lock) bot$',
    '^[/!#](unlock) bot$',
    '^!!tgservice (chat_add_user)$',
    '^!!tgservice (chat_add_user_link)$'
  },
  run = run
}
