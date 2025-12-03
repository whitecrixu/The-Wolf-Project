function onUpdateDatabase()
	print("> Updating database to version 27 (reset offline training skill)")
	db.query("UPDATE `players` SET `offlinetraining_skill` = -1 WHERE `offlinetraining_skill` != -1")
	return true
end
