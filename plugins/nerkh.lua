do

function run(msg, matches)
  return [[
لیست قیمت ها:
  🔸سوپر گپ 1ماه  5 هزار تومان
	🔸سوپر گپ سه ماهه 14 هزار تومان
	🔹سوپر گپ دائمی 25 هزار تومان
	💰پرداخت فقط با کارت به کارت💳
	
برای خرید
@Erfan_1292
  ]]

  end
return {
  description = "shows sudoers", 
  usage = "!sudoers : return sudousers",
  patterns = {
    "^[#!/][Nn]erkh$",

  },
  run = run
}
end
