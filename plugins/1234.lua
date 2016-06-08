do
    function run(msg, matches)
        
    help_text_realm = [[
Realm Commands:
!creategroup [Name]
Create a group
!createrealm [Name]
Create a realm
!setname [Name]
Set realm name
!setabout [group|sgroup] [GroupID] [Text]
Set a group's about text
!setrules [GroupID] [Text]
Set a group's rules
!lock [GroupID] [setting]
Lock a group's setting
!unlock [GroupID] [setting]
Unock a group's setting
!settings [group|sgroup] [GroupID]
Set settings for GroupID
!wholist
Get a list of members in group/realm
!who
Get a file of members in group/realm
!type
Get group type
!kill chat [GroupID]
Kick all memebers and delete group
!kill realm [RealmID]
Kick all members and delete realm
!addadmin [id|username]
Promote an admin by id OR username *Sudo only
!removeadmin [id|username]
Demote an admin by id OR username *Sudo only
!list groups
Get a list of all groups
!list realms
Get a list of all realms
!support
Promote user to support
!-support
Demote user from support
!log
Get a logfile of current group or realm
!broadcast [text]
!broadcast Hello !
Send text to all groups
Only sudo users can run this command
!bc [group_id] [text]
!bc 123456789 Hello !
This command will send text to [group_id]
**You can use "#", "!", or "/" to begin all commands
*Only admins and sudo can add bots in group
*Only admins and sudo can use kick,ban,unban,newlink,setphoto,setname,lock,unlock,set rules,set about and settings commands
*Only admins and sudo can use res, setowner, commands
]],
    help_text = [[
Commands list :
!kick [username|id]
You can also do it by reply
!ban [ username|id]
You can also do it by reply
!unban [id]
You can also do it by reply
!who
Members list
!modlist
Moderators list
!promote [username]
Promote someone
!demote [username]
Demote someone
!kickme
Will kick user
!about
Group description
!setphoto
Set and locks group photo
!setname [name]
Set group name
!rules
Group rules
!id
return group id or user id
!help
Returns help text
!lock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Lock group settings
*rtl: Kick user if Right To Left Char. is in name*
!unlock [links|flood|spam|Arabic|member|rtl|sticker|contacts|strict]
Unlock group settings
*rtl: Kick user if Right To Left Char. is in name*
!mute [all|audio|gifs|photo|video]
mute group message types
*If "muted" message type: user is kicked if message type is posted 
!unmute [all|audio|gifs|photo|video]
Unmute group message types
*If "unmuted" message type: user is not kicked if message type is posted 
!set rules <text>
Set <text> as rules
!set about <text>
Set <text> as about
!settings
Returns group settings
!muteslist
Returns mutes for chat
!muteuser [username]
Mute a user in chat
*user is kicked if they talk
*only owners can mute | mods and owners can unmute
!mutelist
Returns list of muted users in chat
!newlink
create/revoke your group link
!link
returns group link
!owner
returns group owner id
!setowner [id]
Will set id as owner
!setflood [value]
Set [value] as flood sensitivity
!stats
Simple message statistics
!save [value] <text>
Save <text> as [value]
!get [value]
Returns text of [value]
!clean [modlist|rules|about]
Will clear [modlist|rules|about] and set it to nil
!res [username]
returns user id
"!res @username"
!log
Returns group logs
!banlist
will return group ban list
**You can use "#", "!", or "/" to begin all commands
*Only owner and mods can add bots in group
*Only moderators and owner can use kick,ban,unban,newlink,link,setphoto,setname,lock,unlock,set rules,set about and settings commands
*Only owner can use res,setowner,promote,demote and log commands
]],
	help_text_super =[[
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
======================
*Only from markes "!" , "/" , "#" use*
]],
  }
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
