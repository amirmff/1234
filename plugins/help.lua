do

function run(msg, matches)
	if msg.to.type == 'chat' and is_momod(msg) then
  return 'Tele Beyond Command List'..[[
  
❤لیست دستورات💙:
🔴ban [آیدی،یوزر،ریپلی]
🔹شخص مورد نظر از گروه محروم میشود ☑️
🔴unban [آیدی،یوزر،ریپلی]
🔹شخص مورد نظر از محرومیت خارج ميشود ☑️
🔴banlist 
🔹لیست افرادی که از گروه محروم شده اند ☑️
➖➖➖➖➖➖➖
🔴filterlist
🔹لیست کلمه های فیلتر شده
🔴addword  [متن]
🔹فیلتر کردن کلمه
🔴clearbadwords
🔹پاک کردن لیست فیلتر
🔴remword  [متن]
🔹حذف کلمه مورد نظر از لیست فیلتر 
➖➖➖➖➖➖➖
🔴owner
🔹نمایش آیدی مدیر گروه  
🔴modlist
🔹لیست کمک مدیرها 
🔴promote
🔹اضافه کردن کمک مدیر
🔴demote
🔹حذف کردن کمک مدیر  
➖➖➖➖➖➖➖
🔴lock 
🔸[tag|link|member|sticker|arabic|media|
🔸|leave|bots|fwd|contact]
🔹قفل کردن موارد مورد نظر
➖➖➖➖➖➖➖
🔴unlock
🔸[tag|link|member|sticker|arabic|media|
🔸|leave|bots|fwd|contact]
🔹باز کردن موارد قفل شده
➖➖➖➖➖➖➖
🔴setphoto     
🔹تغییر و قفل کردن عکس
🔴setname (نام مورد نظر)
🔹تغییر نام گروه
➖➖➖➖➖➖➖
🔴setflood 2-30
🔹تعیین مقدار حساسیت اسپم
🔹مثال:
🔴‌setflood 5
➖➖➖➖➖➖➖
🔴about
🔹مشاهده توضیحات گروه
🔴rules
🔹مشاهده قوانین گروه 
🔴set rules (متن)
🔹ثبت قوانین جدید
🔴set about (متن)
🔹ثبت توضیحات جدید
➖➖➖➖➖➖➖
🔴setlink
🔹تنظیم لینک گروه
🔴newlink
🔹ساخت لینک جدید  
🔴link
🔹دریافت لینک گروه
🔴linkpv
🔹ارسال لینک در چت خصوصی
➖➖➖➖➖➖➖
🔴clean [modlist|rules|about]
🔹پاک کردن توضیحات،قوانین و لیست مدیران
➖➖➖➖➖➖➖
🔴!id
🔹آیدی فرد مورد نظر حتی با (ریپلی|یوزر)
➖➖➖➖➖➖➖
1_شما میتونید از / ! استفاده کنید 
2_برای ارسال نظر از دستور 
feedback (متن)
استفاده کنید
3_برای دریافت لینک گروه پشتیبانی از دستور
!support
استفاده کنید
➖➖➖➖➖➖➖
]]
end
end
return {
  description = "Robot About", 
  usage = "help: View Robot About",
  patterns = {
    "^[#!/]help2$"
    }, 
  run = run 
}

end
