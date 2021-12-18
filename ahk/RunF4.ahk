F4::
loop
{
green = 64F457 ;綠點顏色
xmin = 401 ;x最短距離
xmax = 653 ;x最長距離
ymin = 617 ;y最短距離
ymax = 617 ;y最長距離
xlocal = %xmin%
ylocal = %ymin%
loop 
{
	if ((ylocal > ymax)||(color = green))
	{
	ylocal-=1
	break
	}
	xlocal = %xmin%
	loop 
	{
		if ((xlocal > xmax)||(color = green))
		{
		xlocal-=10 ;綠點大約位置為%xlocal%
		break
		}
		PixelGetColor, color, %xlocal%, %ylocal%, RGB
		StringRight color,color,6
		xlocal+=10 ;每次都加10
	}
	ylocal+=1 ;每次都加1
}

;msgbox,掃描完成 游標位置為%xlocal%,%ylocal%

xmax = %xlocal%
color = %green%
loop ;開始精準抓最大值位置
{
	if (color != green)
	{
		break
	}
	PixelGetColor, color, %xmax%, %ylocal%, RGB
	StringRight color,color,6
	xmax+=1
}
xmin = %xlocal%
color = %green%
loop ;開始精準抓最小值位置
{
	if (color != green)
	{
		break
	}
	PixelGetColor, color, %xmin%, %ylocal%, RGB
	StringRight color,color,6
	xmin-=1
}
xlocal := Ceil((xmin+xmax)/2) ;Ceil為向上取整數 Floor為向下取整數

;msgbox,最大值%xmax% 最小值%xmin% 精確位置X:=%xlocal%  Y=%ylocal%
;MouseMove, %xlocal%, %ylocal%
loop ;開始偵測此位置顏色的變化
{
	PixelGetColor, color, %xlocal%, %ylocal%, RGB
	StringRight color,color,6
	color_%xlocal%_%ylocal% = %color%
	if (color != green) 
	{
		break
	}	
}
Send {space} 
}