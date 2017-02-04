@ECHO OFF

CLS

SET LOG=%cd%\composer.log

ECHO Copy - Start at %DATE% - %TIME% > %LOG%
ECHO Copy - Start at %DATE% - %TIME%
ECHO.

SET VENDOR=%cd%\vendor\
SET LIBS=%cd%\src\libs\

ECHO Copy files from %VENDOR% to %LIBS% >> %LOG%
ECHO. >> %LOG%

REM ----------------------------------------------------------------------
SET LIB=bootstrap\
IF EXIST %VENDOR%twitter\%LIB% (
   ECHO  === %LIB% === >> %LOG%
   ECHO  === %LIB% ===
   COPY %VENDOR%twitter\%LIB%dist\css\bootstrap.min.css %LIBS%%LIB%css\bootstrap.min.css >> %LOG%
   COPY %VENDOR%twitter\%LIB%dist\css\bootstrap.min.css.map %LIBS%%LIB%css\bootstrap.min.css.map >> %LOG%
   COPY %VENDOR%twitter\%LIB%dist\js\bootstrap.min.js %LIBS%%LIB%js\bootstrap.min.js >> %LOG%
   XCOPY %VENDOR%twitter\%LIB%dist\fonts\*.* %LIBS%%LIB%fonts\*.* /E /Y >> %LOG%
)

REM ----------------------------------------------------------------------
SET LIB=font-awesome\
IF EXIST %VENDOR%fortawesome\%LIB% (
   ECHO  === %LIB% === >> %LOG%
   ECHO  === %LIB% ===
   COPY %VENDOR%fortawesome\%LIB%css\font-awesome.css.map %LIBS%%LIB%css\font-awesome.css.map >> %LOG%
   COPY %VENDOR%fortawesome\%LIB%css\font-awesome.min.css %LIBS%%LIB%css\font-awesome.min.css >> %LOG%
   XCOPY %VENDOR%fortawesome\%LIB%fonts\*.* %LIBS%%LIB%fonts\*.* /E /Y >> %LOG%
)

REM ----------------------------------------------------------------------
SET LIB=jquery\
IF EXIST %VENDOR%components\%LIB% (
   ECHO  === %LIB% === >> %LOG%
   ECHO  === %LIB% ===
   COPY %VENDOR%components\%LIB%jquery.min.js %LIBS%%LIB%jquery.min.js >> %LOG%
   COPY %VENDOR%components\%LIB%jquery.min.map %LIBS%%LIB%jquery.min.map >> %LOG%
)