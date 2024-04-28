#Requires AutoHotkey v2.0
debounce_delay := 50

Hotkey "*Lbutton", RemoveClick

RemoveClick(ThisHotkey)
{
if (A_PriorHotkey = "*Lbutton" AND A_TimeSincePriorHotkey < debounce_delay){
	return
	}
Click "Down"
KeyWait "LButton"
Click "Up"
}