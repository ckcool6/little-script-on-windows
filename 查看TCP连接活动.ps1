$process = @{
  Name = '进程名称'
  Expression = { (Get-Process -Id $_.OwningProcess).Name }
}

Get-NetTCPConnection -State Established |
  Select-Object -Property RemoteAddress, OwningProcess, $process

pause
