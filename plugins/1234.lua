do
    function run(msg, matches)
        
  local text = [[
SuperGroup Commands :
======================
#gpinfo
About the SuperGroup info
======================
#infull
About the you infull
======================
#admins
SuperGroup admins list
======================
#setadmin
Set SuperGroup admins
======================
#owner
Show owner of SuperGroup
======================
#setowner
Set the SuperGroup owner
======================
#modlist
Show moderators list
======================
#bots
List bots in SuperGroup
======================
#bot[lock,unlock]
Bot[lock,unlock] the SuperGroup
======================
#who
List all users in SuperGroup
======================
#block
kick a user from SuperGroup
+Added user to blocked list+
======================
#ban
Ban user from the SuperGroup
+Only with[id+user]+
======================
#unban
Unban user from the SuperGroup
+Only with[id+user]+
======================
#id
SuperGroup ID or user ID
+For user ID:#id @username or reply by: #id+
======================
#id from
Get ID of user massage is forwarded from
======================
#kickme
Kick you from SuperGroup
======================
#promote[@username+id]
Promote a SuperGroup moderator
======================
#demote[@username+id]
Demote a SuperGroup moderator
======================
#setname [group name]
Set the chat name
======================
#setphoto
Set the chat photo
+Then photo and send the+
======================
#setrules[rules]
Set the chat rules
======================
#setabout
Set the chat about
======================
#save [value] <text>
Set extra info for chat
======================
#get[value]
Retrieves extra info for chat by value
======================
#newlink
Create group link
======================
#link
Group the link
======================
#linkpv
Send SuperGroup link private
======================
#rules
Chat the rules
======================
#lock[links+tag+flood+spam+arabic+member+rtl+sticker+contacts+strict+tgservice+forward+media+fosh+operator]
Lock SuperGroup settings
======================
#unlock[links+tag+flood+spam+arabic+member+rtl+sticker+contacts+strict+tgservice+forward+media+fosh+operator]
Unlock SuperGroup settings
======================
#mute[all+audio+gifs+photo+video+text+service]
Mute SuperGroup massage types
======================
#unmute[all+audio+gifs+photo+video+text+service]
Unmute SuperGroup massage types
======================
#setflood[value]
Set[value] as flood sensitivity
======================
#settings
SuperGroup settings
======================
#muteslist
SuperGroup mutes
======================
#banlist
SuperGroup ban list
======================
#clean[rules+about+modlist+mutelist]
Cleaned
======================
#del
Deletes a massage by reply
======================
#public[yes+no]
Set SuperGroup visibility in pm #chats or #chatlist commands
======================
#res[@username]
Returns user name and id by @username
======================
#log
Returns SuperGroup logs
======================
#addword[text]
Added the badword
+If the desired word is cleared+
======================
#badwords
SuperGroup badword list
======================
#rw[text]
clear[text]from list badword
======================
#clearbadwords
Cleaned badword list
======================
#me
Returns your specifications
======================
#tophoto
Become stickers to photos
======================
#tosticker
Turn photos into stikers
======================
#conv[text]
Text to photos
======================
#sticker[text]
Text-to-stickers
======================
#wai
To show office user
======================
#voice[text]
Text-to-voice
887/kj/ujh7lujh/l7u
======================
*Only from markes "!" , "/" , "#" use*
]]
    return text
  end
end 

return {
  description = "show help  ", 
  usage = {
    "show the bot help",
  },
  patterns = {
    "^[!#/]([Hh]elp)$",
    "^[!#/]([Hh]elp)$",
  }, 
  run = run,
}
