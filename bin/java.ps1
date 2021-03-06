param([String] $version, [String] $build)

$downloadTarget = "java-$version-$build-install.exe"
Invoke-Expression "cmd /c wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/$version-$build/jdk-$version-windows-x64.exe -O $downloadTarget"
Invoke-Expression "cmd /c $downloadTarget /s INSTALLDIR=`"$PSScriptRoot`""
rm $downloadTarget