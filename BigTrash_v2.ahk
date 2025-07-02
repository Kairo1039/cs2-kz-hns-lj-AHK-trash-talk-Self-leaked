#NoEnv
#SingleInstance, Force
#InstallKeybdHook
#UseHook
#KeyHistory 0
Process, Priority,, High
SetBatchLines, -1
SetKeyDelay, -1, -1
SendMode Input

; Settings
BindKey := "F1"    ; Key for sending message
MenuKey := "F4"    ; Key to open menu
ChatKey := "y"     ; Key to open global chat
debug := true      ; Debug mode

; English phrases (100 phrases)
phrases_eng := []
phrases_eng.Push("get shit on")
phrases_eng.Push("eat shit retard")
phrases_eng.Push("stop playing cs:go forever you cuck")
phrases_eng.Push("you fucking idiot")
phrases_eng.Push("yeah your mother had a config issue")
phrases_eng.Push("you pay for that cheat?")
phrases_eng.Push("i have over 100 killsays, you're in the 1%")
phrases_eng.Push("lmao holy shit you're bad")
phrases_eng.Push("sit down you little retarded fucking mong")
phrases_eng.Push("HAHAH your entire life is a joke")
phrases_eng.Push("get completely niggered on")
phrases_eng.Push("dabbed on kappakappakappa")
phrases_eng.Push("now you're insecure and dead")
phrases_eng.Push("i'll sodomize your corpse")
phrases_eng.Push("go play overwatch")
phrases_eng.Push("go play fortnite retard")
phrases_eng.Push("you're the dumbest nigger i've met so far")
phrases_eng.Push("hope you dont sell that config")
phrases_eng.Push("suck some dick like the whore you are")
phrases_eng.Push("(*) Fucked beyond a reasonable doubt")
phrases_eng.Push("nice uid fucktard")
phrases_eng.Push("good job dickwipe")
phrases_eng.Push("go back to school, break's over nigga")
phrases_eng.Push("absolutely shit on, you fucking idiot")
phrases_eng.Push("you're a joke kid")
phrases_eng.Push("you'd date any girl that walks within 10 feet of you")
phrases_eng.Push("dont act like you have standards")
phrases_eng.Push("i bet your black, getting tapped like that")
phrases_eng.Push("get shit on nigtard")
phrases_eng.Push("your dad baims you irl fuckwad")
phrases_eng.Push("go get another mountain dew my friend, you need it")
phrases_eng.Push("not only are you homosexual, but you're also gay AND like men")
phrases_eng.Push("uid = iq nigtard")
phrases_eng.Push("get autism you fucking brainlet")
phrases_eng.Push("do you smoke weed? you seem really cool")
phrases_eng.Push("end your life, unironically")
phrases_eng.Push("you fucking furry brony degenerate retard, help cleanse the gene pool and kill yourself")
phrases_eng.Push("put a cheesegrater in your asshole you fucking degenerate")
phrases_eng.Push("nice fakelag, shitdick")
phrases_eng.Push("backtracked to the other side of the border")
phrases_eng.Push("go back to console")
phrases_eng.Push("you want my config? i feel bad")
phrases_eng.Push("go sell some lemonade, buy a new cheat")
phrases_eng.Push("go suck dick you fucking tranny piece of shit")
phrases_eng.Push("get shit on furfag")
phrases_eng.Push("you pay for that? i can paste ayyware better")
phrases_eng.Push("do-do-dodo do dora, do-do-dodo do dicked on")
phrases_eng.Push("you could do better playing legit")
phrases_eng.Push("you want a weebware invite?")
phrases_eng.Push("one step behind the game nigga")
phrases_eng.Push("get baimed negroid fucklord")
phrases_eng.Push("see you in court, kid")
phrases_eng.Push("omegalul this is my meme config")
phrases_eng.Push("is your dad your brother?")
phrases_eng.Push("if you suck at hvh, you might be a redneck")
phrases_eng.Push("lmao whered you get that uid? unknowncheats.me?")
phrases_eng.Push("i've met better hvhers on the aimware forums")
phrases_eng.Push("is that smefs private release?")
phrases_eng.Push("i'll get you an invite code for smef.pw")
phrases_eng.Push("go to college")
phrases_eng.Push("you fucking dropout")
phrases_eng.Push("get a job nigtard, hvh isnt for you")
phrases_eng.Push("get shitted on cuckwad")
phrases_eng.Push("use code eatshit on *****.cc for 50% off")
phrases_eng.Push("whered you paste that from")
phrases_eng.Push("i've made better aimbots on a ti-83")
phrases_eng.Push("hope you didnt pay for that config")
phrases_eng.Push("get good, get tapped by aimware")
phrases_eng.Push("this is killsay #69 lmao")
phrases_eng.Push("polak>all")
phrases_eng.Push("uid 1050 ti")
phrases_eng.Push("go watch my little pony you fucking autistic degenerate")
phrases_eng.Push("i do not particularly enjoy the company of dark-skinned individuals")
phrases_eng.Push("i've detected negroid programming in your cheat")
phrases_eng.Push("backtracked to fucking ukraine")
phrases_eng.Push("hope you have a shotgun config, rifle isn't cutting it")
phrases_eng.Push("dead like the nigger in my basement")
phrases_eng.Push("nice job jake pauler")
phrases_eng.Push("i've made better cheats in my basement")
phrases_eng.Push("you using an arduino retard?")
phrases_eng.Push("sit.")
phrases_eng.Push("get onetapped.su")
phrases_eng.Push("LOL! you just got REKT by a gamer girl")
phrases_eng.Push("get tapped by adam sandler's #1 fan!")
phrases_eng.Push("dont be fooled, i am a trap...")
phrases_eng.Push("you'll never be better than me kid")
phrases_eng.Push("skydidminecraft")
phrases_eng.Push("go watch some idubbbz")
phrases_eng.Push("up your hitchance my friend")
phrases_eng.Push("go play some tf2 you're shit at this game")
phrases_eng.Push("heheh :3")
phrases_eng.Push("i'm only HALF gamer girl!")
phrases_eng.Push("shop smart, shop s-mart!")
phrases_eng.Push("you look like fat albert, big nigger")
phrases_eng.Push("I think this proves white supremacy is alive and well")
phrases_eng.Push("it appeals to like the male fantasy")
phrases_eng.Push("buzzfeed.com best csgo cheat")
phrases_eng.Push("go buy some more razer products fuckwit")
phrases_eng.Push("it has been (12) milliseconds since last 1tap")
phrases_eng.Push("go play some darkrp niglord")
phrases_eng.Push("get shit on nimrod")
phrases_eng.Push("get destroyed shitlord")
phrases_eng.Push("baimed like Biggie Smalls")
phrases_eng.Push("tapped like X")
phrases_eng.Push("quit in console you moronic degenerate")
phrases_eng.Push("random crits are fair and balanced")
phrases_eng.Push("baimware.net")
phrases_eng.Push("1-800-273-8255")
phrases_eng.Push("farted on like a cuck")
phrases_eng.Push("your mom touched your shitbox when you were little")
phrases_eng.Push("toeaim is best aim")
phrases_eng.Push("lol you're a furry aren't you?")
phrases_eng.Push("refund immediately")
phrases_eng.Push("store.steampwned.net")
phrases_eng.Push("4chan.org/hvh/")
phrases_eng.Push("injecting my config")
phrases_eng.Push("desync is useless")
phrases_eng.Push("give me bum")
phrases_eng.Push("lick the shit from my asshole you retard")
phrases_eng.Push("you playing with a controller?")
phrases_eng.Push("sounds like you're really shit at hvh")
phrases_eng.Push("you disappoint me")
phrases_eng.Push("are you crazy? are you out of your mind?")
phrases_eng.Push("go crazy, go stupid")
phrases_eng.Push("turn baim on pls")
phrases_eng.Push("nice resolver dickhead")
phrases_eng.Push("you tryna toeaim me negroid?")
phrases_eng.Push("cry")
phrases_eng.Push("you have an iphone, don't you?")
phrases_eng.Push("i'm using a paste")

; Russian phrases
phrases_rus := []
phrases_rus.Push("У тебя нет мамы хаха уебак")
phrases_rus.Push("Kairo>all")
phrases_rus.Push("у тебя нет матери но есть два отца") 
phrases_rus.Push("Я тебе завтрак сделал насрав в спагетти") 
phrases_rus.Push("пернул прямо в рот")
phrases_rus.Push("в ухо тебе саморез забил молотком съел твою печень запил молоком") 
phrases_rus.Push("Lj король на связи") 
phrases_rus.Push("тебе пора в дом престарелых")
phrases_rus.Push("сидеть собака")
phrases_rus.Push("работаешь курьером за 1000 в день мигрант")
phrases_rus.Push("у твоей мамы был рак я его вырезал как и твоего отца") 
phrases_rus.Push("я вижу солнечный свет а ты нет потому что труп")
phrases_rus.Push("нравится смотреть как твою девушку ебут куколд")
phrases_rus.Push("ты играешь в игры что бы в них сосать?") 
phrases_rus.Push("я использую Kairo трештолк как тебя использует твой нарко шоп для закладок")
phrases_rus.Push("ты солевой 50кг скажи мне в хуй еще что то")
phrases_rus.Push("194 рост 110 вес хуй 21 см жим 160 это твой БОГ")
phrases_rus.Push("при виде меня ты будешь без трусов потому что на тебе подгузник") 
phrases_rus.Push("я курю сигару а ты куришь мой здоровый член")
phrases_rus.Push("мой Lj это мировой рекорд а твой я побил когда мне было 8 лет")
phrases_rus.Push("ты просишь бога в церкви что бы вырасти да сынок ты вырос теперь ты смотришь мне прямо в хуй")
phrases_rus.Push("когда ты ложишься спать ты молишься что бы больше не встретить меня")
phrases_rus.Push("pornhub.com раздел gayporn это то что ты любишь")
phrases_rus.Push("люблю девочек с членом :3")
phrases_rus.Push("я тебе на яйца пердел")
phrases_rus.Push("ну заплачь")
phrases_rus.Push("ты лежачий полицейский проехался по тебе на своей BMW не сбавив скорость")
phrases_rus.Push("у тебя увеличилась простата когда ты сосал мне")
phrases_rus.Push("1050ti твоя видяха люмпен")
phrases_rus.Push("ты отсидел 10 лет за то что я подкинул тебе мефа лузер")
phrases_rus.Push("ты такой низкий что это не ты видишь закат а он тебя")
phrases_rus.Push("я могу побрить свой зад что бы ты мог приклеить себе бороду")
phrases_rus.Push("я ношу ROLEX а ты носишь мой багаж") 
phrases_rus.Push("хочешь горячую ванну я могу нассать тебе")
phrases_rus.Push("что бы говорить со мной сначала вылечи себе кариес")
phrases_rus.Push("когда я говорю все молчат потому что я заткну им рот своих хуем")
phrases_rus.Push("скамлю людей на деньги ты один из них :3")
phrases_rus.Push("пук пук")
phrases_rus.Push("ты черный но у тебя в семье нет черных)")
phrases_rus.Push("я продаю наркотики а ты продаешь свою мать")
phrases_rus.Push("Kairodrugs.onion сделаю тебе скидку")
phrases_rus.Push("не знаешь как получить гражданство РФ Нигер Kairodrugs.onion заходи")
phrases_rus.Push("Ритуальное агентство 8(495)966-45-05")
phrases_rus.Push("твое образование это 9 классов дикхед")
phrases_rus.Push("8(925)659-94-32 набери узнаешь кто я")
phrases_rus.Push("в реке утопись")
phrases_rus.Push("жирный рейв трип юзер, я тебе в некст раунде нос сломаю,чтоб не визжал от радости, 1")
phrases_rus.Push("Извините за нецензурную брань. Но ты упал башкой об пол, 1, сын поноса!")
phrases_rus.Push("удали свою ру пасту")
phrases_rus.Push("единичкой упал пидарас")
phrases_rus.Push("я на очке твоей матери форсаж 15 снимал")
phrases_rus.Push("не хуево хснул тебя бича?")
phrases_rus.Push("жду оправдания в мой хуй")
phrases_rus.Push("купи софтину или так и будешь падать")
phrases_rus.Push("ебанашка че ты без скита тут забыл?")
phrases_rus.Push("Что обычно подают к мексиканской текиле? Правильно, твою мамашу")
phrases_rus.Push("когда матери новые трусы купишь после того как мои братья протаранили ее анальное отверстие, порвав ее партки ебаные???")
phrases_rus.Push("ебаный ты кукашонок втулись в мои яйца своей тугой еблиной")
phrases_rus.Push("давай сын шлюхи вытирай слезы и продолжай мне сосать")
phrases_rus.Push("я тебе щас нос в голову вобью, хочешь?")
phrases_rus.Push("еееей биля как там мама ебаный в рот")
phrases_rus.Push("я сожру твою овцу у тебя на глазах")
phrases_rus.Push("пока ты сидел на работе я строил пизанскую башню в клиторе твоей троепроблядской мамаши 1")
phrases_rus.Push("1 вшивая собака")
phrases_rus.Push("Я использую Colgate а ты чистишь зубы моим дерьмом")
phrases_rus.Push("Тапнул тебя как X")
phrases_rus.Push("Пенил клинов еще в 2к13 у тебя в зубах волос с моих яиц застрял ньюкамер")
phrases_rus.Push("Intel Xeon E5-2680v4 твой проц выблядок")
phrases_rus.Push("Ты куришь члены вместо сигарет")
phrases_rus.Push("Ты продаешь детское порно? я звоню в полицию!")
phrases_rus.Push("твой отец почернел когда ты родился ах забыл он и так негр")
phrases_rus.Push("мне даже не нужно работать что иметь деньги это ты работаешь что бы имели тебя")
phrases_rus.Push("разворачивайся сейчас мой хуй будет нюхать пердежь в твоей заднице")
phrases_rus.Push("ТЫ ЗАБЫЛ СДЕЛАТЬ НАМАЗ!!")
phrases_rus.Push("пернул на член")
phrases_rus.Push("хехе :3")

; Default settings
use_eng := true
use_rus := true

; Language selection menu
Hotkey, %MenuKey%, ShowLanguageMenu
return

ShowLanguageMenu:
    Gui, MenuGui:New, -MinimizeBox -MaximizeBox, Trashtalk Settings
    Gui, Add, CheckBox, vUseEng Checked%use_eng%, English trashtalk
    Gui, Add, CheckBox, vUseRus Checked%use_rus%, Russian trashtalk
    Gui, Add, Button, Default w80 gApplySettings, Apply
    Gui, Add, Button, x+10 w80 gCloseMenu, Close
    Gui, Show
return

ApplySettings:
    Gui, Submit
    use_eng := UseEng
    use_rus := UseRus
    ; Fall through to CloseMenu

CloseMenu:
    Gui, Destroy
return

; Main hotkey
$F1::
    active_phrases := []
    
    if (use_eng) {
        for index, phrase in phrases_eng
            active_phrases.Push(phrase)
    }
    
    if (use_rus) {
        for index, phrase in phrases_rus
            active_phrases.Push(phrase)
    }
    
    if (active_phrases.Length() = 0) {
        if (debug)
            MsgBox, Please select at least one language in the menu (F4)
        return
    }
    
    Random, randIndex, 1, % active_phrases.MaxIndex()
    selectedPhrase := active_phrases[randIndex]
    Gosub, SendChatMessage
return

; Message sending procedure
SendChatMessage:
    IfWinNotActive, ahk_exe cs2.exe
    {
        if (debug) {
            MsgBox, CS2 is not active! Activate the game window.
        }
        return
    }
    
    Send, {%ChatKey%}
    Sleep, 30
    Send, {Backspace 30}
    Sleep, 10
    SendInput, %selectedPhrase%
    Sleep, 30
    Send, {Enter}
    
    if (debug) {
        ToolTip, [CS2 Killsay] Sent: %selectedPhrase%
        SetTimer, RemoveToolTip, 1500
    }
return

RemoveToolTip:
    ToolTip
    SetTimer, RemoveToolTip, Off
return

^!x::ExitApp