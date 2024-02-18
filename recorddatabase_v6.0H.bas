Type album
    albumid As String * 12
    username As String * 50
    title As String * 40
    artist As String * 40
    label As String * 40
    format As String * 40
    country As String * 40
    released As String * 40
    genre As String * 40
    speed As String * 12
    clears As String * 5
    colors As String * 25
    size As String * 12
    style As String * 40
    boxedset As String * 3
    timing As String * 3
    recordnumbers As Integer
    numberofrecords As Integer
    numberoftracks As Integer
    numberoftracks_1 As Integer
    numberoftracks_2 As Integer
    tracklistrecordnumber As String * 6
    tracklistheader_1 As String * 5
    tracklistheader_2 As String * 5
    tracklistname_1 As String * 60
    tracklistname_2 As String * 60
    tracklistlength_1 As String * 60
    tracklistlength_2 As String * 60
    tracklistquality_1 As String * 12
    tracklistquality_2 As String * 12
    trackartist As String * 25
    signed As String * 40
    covercondition As String * 40
    conditionoverall As String * 12
    whenadded As String * 20
    picturedisc As String * 40
    picturedisccondition As String * 40
    release As String * 16
    sealeddisc As String * 3
    labelcolor As String * 12
    labelquality As String * 12
    scratched As String * 12
End Type

Dim answer As String * 3
Dim recordnumbertotal As Integer
Dim tracknumbertotal(26) As Integer
Dim temp2 As String * 60
Dim temp3 As String * 60
Dim temp4 As String * 60
Dim temp5 As String * 60
Dim temp2(25) As String
Dim temp3(25) As String
Dim temp4(26) As String
Dim temp5(26) As String
Dim temp6(26) As String
Dim temp7(26) As String
Dim temp8(26) As String
Dim temp9(26) As String
Dim temp10(26) As String
Dim temp11(26) As String
Dim temp12(26) As Integer
Dim temp13(26) As Integer
Dim recordnumbers As Integer
Dim sidenumbers As Integer
Dim tracknumbers As Integer
start:

Cls
_FullScreen
Dim Record As album, palbumid As String * 12, temp As String * 60
Open "vinylrecorddatabase.dat" For Random As #3 Len = Len(Record)
GoSub newimage
Screen _NewImage(800, 600, 32)
GoSub start3
GoTo finish
start3:

Do

    GoSub setcolor
    Print "Enter Discog record ID : ";: GoSub setcolor
    Input "", palbumid
    MaxRecord = LOF(3) \ Len(Record)
    RecordNumber = 0
    For iii = 1 To MaxRecord
        Get #3, iii, Record
        If Record.albumid = palbumid Then 'we found the record
            GoSub setcolor
            Print 'view existing record
            GoSub setcolor
            Print "RECORD FOUND:"
            GoSub setcolor
            Print "Enter Name of This Album         : ";: GoSub setcolor: Print Record.title
            GoSub setcolor
            Print "Enter Recording Artist(s)        : ";: GoSub setcolor: Print Record.artist
            GoSub setcolor
            Print "Is Record a Boxed Set            : ";: GoSub setcolor: Print Record.boxedset
            GoSub setcolor
            Print "Does Record Have Track Timing    : ";: GoSub setcolor: Print Record.timing
            GoSub setcolor
            Print "Enter Label of this album        : ";: GoSub setcolor: Print Record.label
            GoSub setcolor
            Print "Enter Format of this album       : ";: GoSub setcolor: Print Record.format
            GoSub setcolor
            Print "Enter Country of This album      : ";: GoSub setcolor: Print Record.country
            GoSub setcolor
            Print "Enter Release Date of this album : ";: GoSub setcolor: Print Record.release
            GoSub setcolor
            Print "Enter Genre of this album        : ";: GoSub setcolor: Print Record.genre
            GoSub setcolor
            Print "Enter Style of this album        : ";: GoSub setcolor: Print Record.style
            GoSub setcolor
            Print "Enter Speed of this album        : ";: GoSub setcolor: Print Record.speed
            GoSub setcolor
            Print "Is it a clear record             : ";: GoSub setcolor: Print Record.clears
            GoSub setcolor
            Print "What color is the record         : ";: GoSub setcolor: Print Record.colors
            GoSub setcolor
            Print "Is it a Signed record            : ";: GoSub setcolor: Print Record.signed
            GoSub setcolor
            Print "Is it a picture Disc             : ";: GoSub setcolor: Print Record.picturedisc
            GoSub setcolor
            Print "Condition of the Cover  Overall  : ";: GoSub setcolor: Print Record.covercondition
            GoSub setcolor
            Print "Condition of the Record Overall  : ";: GoSub setcolor: Print Record.conditionoverall
            GoSub setcolor
            Print "When did you add this record     : ";: GoSub setcolor: Print Record.whenadded
            GoSub setcolor
            Print "Is the record sealed NIP         : ";: GoSub setcolor: Print Record.sealeddisc
            GoSub setcolor
            Print "What Is The Label Color          : ";: GoSub setcolor: Print Record.labelcolor
            GoSub setcolor
            Print "What is The Label Condition      : ";: GoSub setcolor: Print Record.labelquality
            GoSub setcolor
            Print "Its the Record Heavily Scratched : ";: GoSub setcolor: Print Record.scratched
            Print "How many records in this album   : "; Record.numberofrecords
            editrecords:
            Print
            GoSub writeandgetrecords
            Print " Rec#     Track #        Track Name                 Track Length or Artist        Track Conditon"
            Print "-------------------------------------------------------------------------------------------------"
            pat$ = " \    \   \   \    \                                    \   \     \              \             \"
            For dr = 1 To Record.numberofrecords
                xxyy = xxyy + 1
                For wwy = 1 To Record.numberoftracks_1

                    If wwy = 1 Then
                        temp2(xxyy) = Record.tracklistrecordnumber
                        temp3(wwy) = Record.tracklistheader_1
                        Record.tracklistrecordnumber = temp2(xxyy)
                        Record.tracklistheader_1 = temp3(wwy)
                    ElseIf wwy > 1 Then
                        temp2(xxyy) = Record.tracklistrecordnumber
                        temp3(wwy) = Record.tracklistheader_1
                        Record.tracklistrecordnumber = temp2(xxyy)
                        Record.tracklistheader_1 = temp3(wwy)
                    End If
                    temp6(external1) = Record.tracklistname_1
                    temp7(external1) = Record.tracklistlength_1
                    temp10(external1) = Record.tracklistquality_1
                    Record.tracklistname_1 = temp6(wwy)
                    Record.tracklistlength_1 = temp7(wwy)
                    Record.tracklistquality_1 = temp10(wwy)
                    Print Using pat$; Record.tracklistrecordnumber; Record.tracklistheader_1; Record.tracklistname_1; Record.tracklistlength_1; Record.tracklistquality_1
                Next

                For wwx = 1 To Record.numberoftracks_2
                    yyxx = yyxx + 1
                    If wwx = 1 Then
                        temp4(yyxx) = Record.tracklistrecordnumber
                        temp5(wwx) = Record.tracklistheader_2
                        Record.tracklistrecordnumber = temp4(yyxx)
                        Record.tracklistheader_2 = temp5(wwx)
                    ElseIf wwx > 1 Then
                        temp4(dr) = Record.tracklistrecordnumber
                        temp5(wwx) = Record.tracklistheader_2
                        Record.tracklistrecordnumber = temp4(yyxx)
                        Record.tracklistheader_2 = temp5(wwx)
                    End If
                    temp8(wwx) = Record.tracklistname_2
                    temp9(wwx) = Record.tracklistlength_2
                    temp11(wwx) = Record.tracklistquality_2
                    Record.tracklistname_2 = temp8(wwx)
                    Record.tracklistlength_2 = temp9(wwx)
                    Record.tracklistquality_2 = temp11(wwx)

                    Print Using pat$; Record.tracklistrecordnumber; Record.tracklistheader_2; Record.tracklistname_2; Record.tracklistlength_2; Record.tracklistquality_2
                Next
            Next


            Print
            RecordNumber = iii
            Print

            Exit For 'no need to search any more once we're found
        End If
    Next


    If RecordNumber = 0 Then 'we didn't find anyone
        Cls
        Print
        GoSub setcolor
        Print "NEW RECORD:"
        RecordNumber = MaxRecord + 1
    End If
    Record.albumid = palbumid
    GoSub writeandgetrecords
    GoSub setcolor
    Print "Discog+ ID: ";: GoSub setcolor: Print Record.albumid 'add a new record, or update an old one.
    If Record.albumid = "" Then Close #3: GoTo finish
    GoSub setcolor
    Print "Enter Name of This Album         : ";: GoSub setcolor
    Input "", Record.title
    GoSub setcolor
    Print "Enter Recording Artist(s)        : ";: GoSub setcolor
    Input "", Record.artist
    GoSub setcolor
    Print "Enter Label of this album        : ";: GoSub setcolor
    Input "", Record.label
    GoSub setcolor
    Print "Enter Format of this album       : ";: GoSub setcolor
    Input "", Record.format
    GoSub setcolor
    Print "Is This a boxed set album        : ";: GoSub setcolor
    Input "", Record.boxedset
    GoSub setcolor
    Print "Do the records have Track Times  : ";: GoSub setcolor
    Input "", Record.timing
    GoSub setcolor
    Print "Enter Country of This album      : ";: GoSub setcolor
    Input "", Record.country
    GoSub setcolor
    Print "Enter Release Date of this album : ";: GoSub setcolor
    Input "", Record.release
    GoSub setcolor
    Print "Enter Genre of this album        : ";: GoSub setcolor
    Input "", Record.genre
    GoSub setcolor
    Input "Enter Style of this album        : ", Record.style
    GoSub setcolor
    Input "Enter Speed of this album        : ", Record.speed
    GoSub setcolor
    Input "Is it a clear record             : ", Record.clears
    GoSub setcolor
    Input "What color is the record         : ", Record.colors
    GoSub setcolor
    Input "Is it a Signed record            : ", Record.signed
    GoSub setcolor
    Input "Is it a picture Disc             : ", Record.picturedisc
    GoSub setcolor
    Input "Condition of the Cover  Overall  : ", Record.covercondition
    GoSub setcolor
    Input "Condition of the Record Overall  : ", Record.conditionoverall
    GoSub setcolor
    Input "When did you add this record     : ", Record.whenadded
    GoSub setcolor
    Input "Is the record sealed NIP         : ", Record.sealeddisc
    GoSub setcolor
    Input "What color is the Label          : ", Record.labelcolor
    GoSub setcolor
    Input "What is the Label Quality        : ", Record.labelquality
    GoSub setcolor
    Input "Is the Record Scratched Heavily  : ", Record.scratched
    GoSub setcolor
    Input "How many records in this album   : ", Record.numberofrecords
    If Record.numberofrecords = 0 Then Record.numberofrecords = 1
    Print
    Cls
    For i = 1 To Record.numberofrecords

        For j = 1 To 2
            GoSub setcolor
            Print "Enter The Number of Tracks for Record # "; i; " Side # "; j

            If j = 1 Then
                GoSub setcolor
                Input "Number of Tracks : ", Record.numberoftracks_1
            End If
            If j = 2 Then
                GoSub setcolor
                Input "Number of Tracks : ", Record.numberoftracks_2

            End If
        Next
    Next

    ii = i
    xx = x
    recordnumbertotal(ii) = ii
    tracknumbertotal(xx) = xx
    GoSub writeandgetrecords
    For zzz = 1 To Record.numberofrecords
        Cls
        For www = 1 To Record.numberoftracks_1
            GoSub setcolor
            Print "Record Number : "; temp2(zzz); "  Track Number 1  : "; temp3(www)
            Record.tracklistheader_1 = temp3(wwy)
            GoSub setcolor
            Input "Track Name    : ", temp6(www)
            Record.tracklistname_1 = temp6(www)
            If Record.timing = "Y" Or Record.timing = "y" Then
                GoSub setcolor
                Input "Track Length  : ", temp7(www)
            Else
                GoSub setcolor
                Input "Track Artist  : ", temp7(www)
            End If
            Record.tracklistlength_1 = temp7(www)
            GoSub setcolor
            Input "Track Quality : ", temp10(www)
            Record.tracklistquality_1 = temp10(www)
        Next
        Cls
        For xxx = 1 To Record.numberoftracks_2
            GoSub setcolor
            Print "Record Number : "; temp4(zzz); " Track Number 2  : "; temp5(xxx)
            Record.tracklistheader_1 = temp5(wwx)
            GoSub setcolor
            Input "Track Name    : ", temp8(xxx)
            Record.tracklistname_2 = temp8(xxx)
            If Record.timing = "Y" Or Record.timing = "y" Then
                GoSub setcolor
                Input "Track Length  : ", temp9(xxx)
            Else
                GoSub setcolor
                Input "Track Artist  : ", temp9(xxx)
            End If
            Record.tracklistlength_2 = temp9(xxx)
            GoSub setcolor
            Input "Track Quality : ", temp11(xxx)
            Record.tracklistquality_2 = temp11(xxx)
        Next
        GoSub writeandgetrecords
        Print " Rec #    Track #   Track Name             Track Length of Artist      Track Condition"
        Print "--------------------------------------------------------------------------------------"
        pat$ = " \    \   \   \    \                     \       \     \                \         \"
        For dr = 1 To Record.numberofrecords
            xxyy = xxyy + 1
            If xxyy = Record.numberofrecords Then
                xxyy = xxyy
            End If

            For wwy = 1 To Record.numberoftracks_1
                If xxyy = 1 Then
                    temp2(xxyy) = Record.tracklistrecordnumber
                    temp3(wwy) = Record.tracklistheader_1
                    Record.tracklistrecordnumber = temp2(xxyy)
                    Record.tracklistheader_1 = temp3(wwy)
                ElseIf xxyy > 1 Then
                    temp2(xxyy) = Record.tracklistrecordnumber
                    temp3(wwy) = Record.tracklistheader_1
                    Record.tracklistrecordnumber = temp2(xxyy)
                    Record.tracklistheader_1 = temp3(wwy)
                End If
                temp2(external1) = Record.tracklistrecordnumber
                temp3(external1) = Record.tracklistheader_1
                temp6(external1) = Record.tracklistname_1
                temp7(external1) = Record.tracklistlength_1
                temp10(external1) = Record.tracklistquality_1
                GoSub setcolor
                Print Using pat$; Record.tracklistrecordnumber; Record.tracklistheader_1; Record.tracklistname_1; Record.tracklistlength_1; Record.tracklistquality_1
            Next

            For wwx = 1 To Record.numberoftracks_2
                If wwx = 1 Then
                    temp4(xxyy) = Record.tracklistrecordnumber
                    temp5(wwx) = Record.tracklistheader_2
                    Record.tracklistrecordnumber = temp4(xxyy)
                    Record.tracklistheader_2 = temp5(wwx)
                ElseIf wwx > 1 Then
                    temp4(dr) = Record.tracklistrecordnumber
                    temp5(wwx) = Record.tracklistheader_2
                    Record.tracklistrecordnumber = temp4(xxyy)
                    Record.tracklistheader_2 = temp5(wwx)
                End If
                temp8(wwx) = Record.tracklistname_2
                temp9(wwx) = Record.tracklistlength_2
                temp11(wwx) = Record.tracklistquality_2
                Record.tracklistname_2 = temp8(wwx)
                Record.tracklistlength_2 = temp9(wwx)
                Record.tracklistquality_2 = temp11(wwx)
                GoSub setcolor
                Print Using pat$; Record.tracklistrecordnumber; Record.tracklistheader_2; Record.tracklistname_2; Record.tracklistlength_2; Record.tracklistquality_2
            Next
        Next
        GoSub CHECK
        Return

    Next
    CHECK:
    Print
    GoSub setcolor
    Print "Is this correct [Y]es or [N]o  [Defaults to [Y]es] By Just pressing Enter]"
    answer = Input$(1)
    answer = UCase$(answer)
    If answer = "Y" Then
        GoTo nex
    End If
    If answer = "" Then
        GoTo nex
    ElseIf answer = "N" Then
        GoTo edittracks
    End If

    edittracks:
    start2:
    Print
    GoSub setcolor
    Print "Edit Records"
    Print
    GoSub setcolor
    Input "Record Number : ", recordnumbers
    GoSub setcolor
    Input "Side Number   : ", sidenumber
    GoSub setcolor
    Input "Track Number  : ", tracknumber
    If recordnumbers > recordnumberstotal(ii) Then
        GoTo start2
    End If
    If sidenumber = 1 Then
        If tracknumber > Record.numberoftracks_1 Then
            GoTo start2
        End If
        If sidenumber = 2 Then
            If tracknumber > Record.numberoftracks_2 Then
                GoTo start2
            End If
        End If
    End If
    i = recordnumbers
    ww = tracknumber
    If sidenumber = 1 Then
        GoSub setcolor
        Print " (1) "; temp5(ww); "   "; temp6(ww)
        GoSub setcolor
        Print " (2) "; temp5(ww); "   "; temp7(ww)
        GoSub setcolor
        Print " (3) "; temp5(ww); "   "; temp10(ww)
        Print
        GoSub setcolor
        Input "Number to change : ", number
        GoSub setcolor
        If number = 1 Then Print "> "; temp6(ww)
        GoSub setcolor
        If number = 1 Then Input "> ", temp6(ww)
        GoSub setcolor
        If number = 2 Then Print "> "; temp7(ww)
        GoSub setcolor
        If number = 2 Then Input "> ", temp7(ww)
        GoSub setcolor
        If number = 3 Then Print "> "; temp10(ww)
        GoSub setcolor
        If number = 3 Then Input "> ", temp10(ww)
        If number = 1 Then Record.tracklistname_1 = temp6(ww)
        If number = 2 Then Record.tracklistlength_1 = temp7(ww)
        If number = 3 Then Record.tracklistquality_1 = temp10(ww)
    End If
    If sidenumber = 2 Then
        GoSub setcolor
        Print " (1) "; temp4(ww); "   "; temp8(ww)
        GoSub setcolor
        Print " (2) "; temp4(ww); "   "; temp9(ww)
        GoSub setcolor
        Print " (3) "; temp4(ww); "   "; temp11(ww)
        Print
        GoSub setcolor
        Input "Number to change : ", number
        GoSub setcolor
        If number = 1 Then Print "> "; temp8(ww)
        GoSub setcolor
        If number = 1 Then Input "> ", temp8(ww)
        GoSub setcolor
        If number = 2 Then Print "> "; temp9(ww)
        GoSub setcolor
        If number = 2 Then Input "> ", temp9(ww)
        GoSub setcolor
        If number = 3 Then Print "> "; temp11(ww)
        GoSub setcolor
        If number = 3 Then Input "> ", temp11(ww)
        If number = 1 Then Record.tracklistname_2 = temp8(ww)
        If number = 2 Then Record.tracklistlength_2 = temp9(ww)
        If number = 3 Then Record.tracklistquality_2 = temp11(ww)
    End If
    nex:
    Put #3, RecordNumber, Record
    nex2:
    GoSub setcolor
    Input "Enter or Search For Another One [Y]es [N]o : ", answer
    If answer = "N" Or answer = "n" Then GoTo finish
    If answer = "Y" Or answer = "y" Then Close: GoTo start3
Loop
Cls
Print
finish:
Close #1
End
writeandgetrecords:
For ur = 1 To 2
    If ur = 1 Then
        Open "program1.dat" For Output As #1
        Open "program2.dat" For Output As #2
        For z = 1 To Record.numberofrecords
            temp2 = "Record_A01_1"
            temp3 = "Track_A01_1"
            Mid$(temp2, 8, 1) = LTrim$(Chr$(64 + z))
            Mid$(temp3, 7, 1) = LTrim$(Chr$(64 + z))
            For R = 1 To Record.numberoftracks_1
                If R < 10 Then
                    Mid$(temp3, 10, 1) = LTrim$(Chr$(R))

                ElseIf R > 9 Then
                    Mid$(temp3, 9, 2) = LTrim$(Chr$(R))

                End If


                Print #1, temp2
                Print #2, temp3
            Next
        Next
    End If
    Close #1
    Close #2

    If ur = 1 Then
        Open "program1.dat" For Input As #1
        Open "program2.dat" For Input As #2

        For zxy = 1 To Record.numberoftracks_1

            Input #1, temp2(zxy)
            Input #2, temp3(zxy)

        Next
    End If
    Close #1
    Close #2
    If ur = 2 Then
        Open "program3.dat" For Output As #1
        Open "program4.dat" For Output As #2
        For z = 1 To Record.numberofrecords
            temp4 = "Record_A01_2"
            temp5 = "Track_A01_2"
            Mid$(temp4, 8, 1) = LTrim$(Chr$(64 + z))
            Mid$(temp5, 7, 1) = LTrim$(Chr$(64 + z))
            For R = 1 To Record.numberoftracks_2
                If R < 10 Then
                    Mid$(temp5, 10, 1) = LTrim$(Str$(R))
                ElseIf R > 9 Then
                    Mid$(temp5, 9, 2) = LTrim$(Str$(R))
                End If

                Print #1, temp4
                Print #2, temp5

            Next
        Next
    End If

    Close #1
    Close #2
    If ur = 2 Then
        Open "program3.dat" For Input As #1
        Open "program4.dat" For Input As #2

        For zxy = 1 To Record.numberoftracks_2
            Input #1, temp4(zxy)
            Input #2, temp5(zxy)
        Next
    End If
Next
Close #1
Close #2

Return

setcolor:
Screen 12

Out &H3C8, 17: Out &H3C9, 41: Out &H3C9, 17: Out &H3C9, 12: 'set black background to dark blue

Randomize Timer
attribute = Int(15 * Rnd(1) + 1)
attribute1 = Int(255 * Rnd(1) + 1)
attribute2 = Int(255 * Rnd(1) + 1)
attribute3 = Int(255 * Rnd(1) + 1)
attribute4 = Int(255 * Rnd(1) + 1)
Out &H3C7, attribute 'set color attribute to read

red$ = Hex$(attribute1)
grn$ = Hex$(attribute2)
blu$ = Hex$(attribute3)
alpha$ = Hex$(attribute4)
hex32$ = "&H" + alpha$ + red$ + grn$ + blu$
_PaletteColor attribute, Val(hex32$) 'VAL converts hex string to a LONG 32 bit value
If attribute Then Color attribute 'exclude black color print
Return
newimage:
Screen _NewImage(600, 400, 32)


img& = _LoadImage("cover.png") 'from http://www.qb64.org/images/qb64bee.png (or use any 24/32 bit image)
'Turn off auto display
_Display

' Fade in
For i% = 255 To 0 Step -5
    _Limit 5 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'decrease black box transparency
    _Display
Next

' Fade out
For i% = 0 To 255 Step 5
    _Limit 5 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'increase black box transparenccy
    _Display
Next



img& = _LoadImage("record.png") 'from http://www.qb64.org/images/qb64bee.png (or use any 24/32 bit image)
'Turn off auto display
_Display

' Fade in
For i% = 255 To 0 Step -5
    _Limit 5 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'decrease black box transparency
    _Display
Next

' Fade out
For i% = 0 To 255 Step 5
    _Limit 5 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'increase black box transparenccy
    _Display
Next
Return

