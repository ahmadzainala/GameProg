# GameProg
Game Programming
Nim : 1404862
Nama : Ahmad Z A
Kelas : C2

implementasi probabilitas dan pencarian jalur terpendek:

ada 4 jenis musuh:
-Banteng:
	menggunakan probabilitas arah gerak ketika mentok pada tembok,
	dengan sekala 0 - 4, dan ketika player ada pada area pandangan,
	banteng akan mengejar dan berubah marah, bisa menggunakan teleport

-Kancil:
	menggunakan probabilitas mendekat kepada pemain ketika mentok ke dinding,
	bisa menggunakan teleport

-Ninja babi:
	menggunakan algoritma A* untuk mengejar player dengan jalur terdekat,
	secara "real-time", tidak bisa menggunakan teleport,
	tidak akan mengejar bila berada diruang tertutup

-Banteng mata merah :
	Boss terkuat, namun dia hanya menunggu di singga sana-nya.

implementasi Level:
-room1 = room easy hanya ada banteng
-room2 = room normal, hanya ada kancil
-room3 = room hard, ada kancil, ninja dan Boss

implementasi minimax:
-saat bertabrakan dengan musuh akan masuk ke room duel,
	point akan bertambah ketika kita memberi damage terhadap musuh atau kita melakukan defense,
	point berkurang ketika kita menerima damage atau musuh melakukan healing


link video:
https://youtu.be/9Edkvtng8ls
