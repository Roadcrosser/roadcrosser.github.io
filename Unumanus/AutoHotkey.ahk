/*
██╗   ██╗███╗   ██╗██╗   ██╗███╗   ███╗ █████╗ ███╗   ██╗██╗   ██╗███████╗
██║   ██║████╗  ██║██║   ██║████╗ ████║██╔══██╗████╗  ██║██║   ██║██╔════╝
██║   ██║██╔██╗ ██║██║   ██║██╔████╔██║███████║██╔██╗ ██║██║   ██║███████╗
██║   ██║██║╚██╗██║██║   ██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║   ██║╚════██║
╚██████╔╝██║ ╚████║╚██████╔╝██║ ╚═╝ ██║██║  ██║██║ ╚████║╚██████╔╝███████║
 ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
Unumanus v1.5.7.2

Note: If you see a big garble of characters above, you might want to ignore Step 2 and go to http://roadcrosser.xyz/Unumanus to get this file instead.
      While using this version is also fine, it'd just look worse.

 Install instructions:
 1. Download and install AutoHotkey from https://autohotkey.com/
 2. Copy this script into a text file with the name "AutoHotkey.ahk".
 3. Save the file in the Documents folder.
 4. Right-click the AutoHotkey Icon in the System Tray and select "Reload This Script".

*/
#Hotstring ?
;—————————————————————————————————————————————————————————————————————————————————————————————————
/*
╔══════════════════╗
║   RANDOMIZERS    ║
╚══════════════════╝
*/
Heats1 = Heats,Flames,Firey,Hot,Fire,Hots,Fires,Flame,Flamey,Heaty,Burning,Char,Charred,Charry,Burns,Burn,Blazes,Blaze,Blazing,Ember,Embers,Arson,Sparky,Sparks,Infernal,Inferno,Melt,Melts,Melty,Melting,Seary,Searing,Sear,Swelter,Sweltering,Thermal,Warm,Roast,Roasty,Combustion,Combustiony,Broil,Broils,Broily,Broiling,Boil,Boils,Boily,Boiling,Warms,Flaming,Heating,Warming,Roasting,Flameo,Toast,Toasts,Toasting,Toasty,Lava,Lavas,Magma,Magmas,Stars,Star,Starry,Grill,Grilly,Grilling,Steam,Steamy,Steamer,Steams,Redhot,Redhots,Spicy,Spice,Spicing,Fuming,Fumes,Blast,Blasts,Blasting,Blaster,Cinder,Cinders,Pyro,Sizzling,Sizzle,Sizzler,Sizzles
Heats2 = man,guy,dude,face,head,waffle,bro,bud,bub,smith,runt,pip,ton,sir,ster,boy,ius,master,kid
Orng1 = ronaeg,organ,oroongay,ongy boingy,egnaro,oarng,oingo boingo,orangudan,orangutan,orgnpuff,orngear,ngroae,egroan,doorhinge,norgergestan,ornge,ornage,orgne,organe,ograne,ongere,rangeo,oerange,oran berry,orange juice,oregano,orenge,oregon,oregona,oranga,orgene,oronge,ereonge,orngasdlfjsdghj,rngeoa,rnoarg,orngea,rongea,ornga,oregangeo,organge,daniel-range,ordan,orgean,orgaen,orgn,orangepuff,red-yellow,yellow-red,orangefruit
Orng2 = nerd,clod,star,stare,stair,shtar,stra,strar,strer,sta,staro,stairs,Star,ster,stror,stah,steh,sror,sar,score,sert,ASSERT,scrim,sploot,suit,stress,sort,spit,ASSET,swood

StringSplit HeatsArray1, Heats1, `,
StringSplit HeatsArray2, Heats2, `,
StringSplit Orngarray1, Orng1, `,
StringSplit Orngarray2, Orng2, `,

Random, Randnum,1,91 ; Heats
Heats1 := HeatsArray1%Randnum%
Random, Randnum,1,91 ; Flames
Heats2 := HeatsArray1%Randnum%
Random, Randnum,1,19 ; man
Heats3 := HeatsArray2%Randnum%

Random, Randnum,1,50 ; orange
Orng1 := Orngarray1%Randnum%
Random, Randnum, 1,20 ; chance to get suffix

if Randnum = 1
{
  Random, Randnum,1,30 ; star
  Orng2 := Orngarray2%Randnum%
}
else
{
  Orng2 =
}

Random, Randnum, 1,100 ; John Jacon Jingleheimer Schmidt, his name is my name too.
if Randnum = 1
{
  Orng1 = John Jacob Orangeheimer Schmidt
  Orng2 =
}
return

:*:<hf>::
Send %Heats1% %Heats2%%Heats3%
reload
return

:*:<oj>::
Send %Orng1%%Orng2%
reload
return

;—————————————————————————————————————————————————————————————————————————————————————————————————

/*
╔══════════════════╗
║  SUSPEND/RELOAD  ║
╚══════════════════╝
*/
^!a::Suspend

;^r::Reload
;—————————————————————————————————————————————————————————————————————————————————————————————————
/*
╔══════════════════╗
║SURFACE PEN REMAPS║
╚══════════════════╝
*/
;Click top once
#F20:: Send, {MButton}
Return

;Click top twice
#F19:: Run, %ProgramFiles%\Common Files\microsoft shared\ink\TabTip.exe
Return

;Hold top
#F18:: Send,^+4
Return
;—————————————————————————————————————————————————————————————————————————————————————————————————
/*
╔══════════════════╗
║ TEXT REPLACEMENT ║
╚══════════════════╝
*/
/*
;Temp setup stuff
!a::
{
SendEvent {{}^v
}
return

!s::
{
SendEvent {{}
}
return

!d::
{
SendEvent {}}
}
return

!f::
{
SendEvent :*:<>::{Enter}{{}{Enter}SendEvent{Space}{Enter}{Right}{Enter}return
}
return

!r::
{
SendEvent ^s
Reload
}
return
*/

;—————————————————————————————————————————————————————————————————————————————————————————————————
;Texty stuff for text
::teh::the
::adn::and
::@@::@gmail.com

;Kaomoji

:*:<shrug>:: ; ¯\_(ツ)_/¯
{
SendEvent {U+0xAF}{\}{_}{(}{U+30C4}{)}{_}{/}{U+0xAF}
}
return

:*:<lod>:: ; ಠ_ಠ
{
SendEvent {U+0CA0}{_}{U+0CA0}
}
return


:*:<flip>:: ; (╯°□°)╯︵┻━┻
{
SendEvent {(}{U+256F}{U+00B0}{U+25A1}{U+00B0}{)}{U+256F}{U+FE35}{U+253B}{U+2501}{U+253B}
}
return

:*:<unflip>:: ; ┬─┬ノ(ಠ_ಠノ)
{
SendEvent {U+252C}{U+2500}{U+252C}{U+30CE}{(}}{U+0CA0}{_}{U+0CA0}}{U+30CE}{)}
}
return

:*:<grr>:: ; (ノಠ益ಠ)ノ
{
SendEvent {(}{U+30CE}{U+0CA0}{U+76CA}{U+0CA0}{)}{U+30CE}
}
return

:*:<rightpointface>:: ; (☞ﾟヮﾟ)☞
{
SendEvent {(}{U+261E}{U+FF9F}{U+30EE}{U+FF9F}{)}{U+261E}
}
return

:*:<leftpointface>:: ; ☜(ﾟヮﾟ☜)
{
SendEvent {U+261C}{(}{U+FF9F}{U+30EE}{U+FF9F}{U+261C}{)}
}
return

:*:<magic>:: ; (ﾉ◕ヮ◕)ﾉ*:・ﾟ✧
{
SendEvent {(}{U+FF89}{U+25D5}{U+30EE}{U+25D5}{)}{U+FF89}{*}{:}{U+30FB}{U+FF9F}{U+2727}
}
return

:*:<frisk>:: ; (—_—)
{
SendEvent {(}{U+2014}{_}{U+2014}{)}
}
return

:*:<wut>:: ; ఠ͟ಠ
{
SendEvent {U+0C20}{ }{U+035F}{U+0CA0}
}
return

;—————————————————————————————————————————————————————————————————————————————————————————————————
;Special characters I'll probable never use

::^1:: ; ¹
{
SendEvent {U+00B9}
}
return

::^2:: ; ²
{
SendEvent {U+00B2}
}
return

::^3:: ; ³
{
SendEvent {U+00B3}
}
return

::?!:: ; ‽
{
SendEvent {U+203D}
}
return

::!?:: ; ‽
{
SendEvent {U+203D}
}
return

:*:<cloud>:: ; ☁
{
SendEvent {U+2601}
}
return

:*:<sun>:: ; ☼
{
SendEvent {U+263C}
}
return

:*:<umbrella>:: ; ☂
{
SendEvent {U+2602}
}
return

:*:<cent>:: ; ¢
{
SendEvent {U+00A2}
}
return

:*:<euro>:: ; €
{
SendEvent {U+20AC}
}
return

:*:<pound>:: ; £
{
SendEvent {U+00A3}
}
return

:*:<yen>:: ; ¥
{
SendEvent {U+00A5}
}
return

:*:<note>:: ; ♪
{
SendEvent {U+266A}
}
return

:*:<note2>:: ; ♫
{
SendEvent {U+266B}
}
return

:*:<radioactive>:: ; ☢
{
SendEvent {U+2622}
}
return

::->:: ; →
{
SendEvent {U+2192}
}
return

::<-:: ; ←
{
SendEvent {U+2190}
}
return

::<v>:: ; ↓
{
SendEvent {U+2193}
}
return

::^^:: ; ↑
{
SendEvent {U+2191}
}
return

:*:<black>:: ; █
{
SendEvent {U+2588}
}
return

:*:(C):: ; ©
{
SendEvent {U+00A9}
}
return

:*:(R):: ; ®
{
SendEvent {U+00AE}
}
return

:*:(TM):: ; ™
{
SendEvent {U+2122}
}
return

:*:<.>:: ; ●
{
SendEvent {U+25CF}
}
return

:*:<deg>:: ; °
{
SendEvent {U+00B0}
}
return

:*:<sqrt>:: ; √
{
SendEvent {U+221A}
}
return

:*:<box>:: ; ☐
{
SendEvent {U+2610}
}
return

::<3:: ; ♥
{
SendEvent {U+2665}
}
return

:*:<pilcrow>:: ; ¶
{
SendEvent {U+00B6}
}
return

:*:=/=:: ; ≠
{
SendEvent {U+2260}
}
return

::=<:: ; ≤
{
SendEvent {U+2264}
}
return

::=>:: ; ≥
{
SendEvent {U+2265}
}
return

:*:<oo>::
{
SendEvent {U+221E}
}
return

::1/4:: ; ¼
{
SendEvent {U+00BC}
}
return

::1/2:: ; ½
{
SendEvent {U+00BD}
}
return

::3/4:: ; ¾
{
SendEvent {U+00BE}
}
return

::1/3:: ; ⅓
{
SendEvent {U+2153}
}
return

::2/3:: ; ⅔
{
SendEvent {U+2154}
}
return

::1/5:: ; ⅕
{
SendEvent {U+2155}
}
return

::2/5:: ; ⅖
{
SendEvent {U+2156}
}
return

::3/5:: ; ⅗
{
SendEvent {U+2157}
}
return

::4/5:: ; ⅘
{
SendEvent {U+2158}
}
return

::1/6:: ; ⅙
{
SendEvent {U+2159}
}
return

::5/6:: ; ⅚
{
SendEvent {U+215A}
}
return

::1/8:: ; ⅛
{
SendEvent {U+215B}
}
return

::3/8:: ; ⅜
{
SendEvent {U+215C}
}
return

::5/8:: ; ⅝
{
SendEvent {U+215D}
}
return

::7/8:: ; ⅞
{
SendEvent {U+215E}
}
return


;—————————————————————————————————————————————————————————————————————————————————————————————————
;Greek Letters (or some of them, anyway.)

:*:<a>:: ; α
{
SendEvent {U+03B1}
}
return

:*:<b>:: ; β
{
SendEvent {U+03B2}
}
return

:*:<D>:: ; Δ
{
SendEvent {U+0394}
}
return

:*:<d>:: ; δ (I think???)
{
SendEvent {U+03B4}
}
return

:*:<T>:: ; Θ
{
SendEvent {U+0398}
}
return

:*:<t>:: ; Θ
{
SendEvent {U+03B8}
}
return

:*:<u>:: ; μ
{
SendEvent {U+03BC}
}
return

:*:<pi>:: ; π
{
SendEvent {U+03C0}
}
return

:*:<E>:: ; Σ
{
SendEvent {U+03A3}
}
return

:*:<O>:: ; Ω
{
SendEvent {U+03A9}
}
return

;—————————————————————————————————————————————————————————————————————————————————————————————————
/*
╔══════════════════╗
║  VOLUME CHANGER  ║
╚══════════════════╝
*/

!z:: SoundSet, 0 ; 0%

!x:: SoundSet, 30 ; 30%

~x & c::
	if GetKeyState("Alt") {
        SoundSet, 50 ; 50%
        return
    }
  return

~c & x::
	if GetKeyState("Alt") {
        SoundSet, 50 ; 50%
        return
    }
  return

!c:: SoundSet, 60 ; 60%

!v:: SoundSet, 100 ; 100%
