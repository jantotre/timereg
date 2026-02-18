Add-Type -Path "C:/GIT/timereg/bin/Debug/net9.0/Microsoft.Data.Sqlite.dll"
$conn = New-Object Microsoft.Data.Sqlite.SqliteConnection("Data Source=C:/GIT/timereg/timeregistrering.db")
$conn.Open()
$cmd = $conn.CreateCommand()
$cmd.CommandText = "INSERT OR IGNORE INTO Consultants (FirstName, LastName, Email) VALUES ('Jan', 'Knudsen', 'jankn@proventus.no')"
$rows = $cmd.ExecuteNonQuery()
$conn.Close()
Write-Host "Rader satt inn: $rows"
