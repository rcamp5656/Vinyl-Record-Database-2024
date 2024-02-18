Type Album
    albumid1 As String * 20
    albumid2 As String * 20
    damaged As String * 60
    username As String * 50
    title As String * 40
    producer As String * 40
    label As String * 40
    country As String * 40
    released As String * 4
    genre As String * 20
    speed As Integer
    c0l0r As String * 12
    cleer As String * 1
    size As String * 7
    style As String * 40
    boxset As String * 1
    numberofrecords As Integer
    numberoftracks As Integer
    numberoftracks_1 As Integer
    numberoftracks_2 As Integer
    tracklistrecordnumber As String * 6
    tracklistheader_1 As String * 12
    tracklistheader_2 As String * 12
    tracklistname_1 As String * 60
    tracklistname_2 As String * 60
    tracklistlength_1 As Integer
    tracklistlength_2 As Integer
    tracklistquality_1 As String * 12
    tracklistquality_2 As String * 12
    tracklistartist_1 As String * 40
    tracklistartist_2 As String * 40
    tracktiming As String * 1
    signed As String * 40
    jacketcondition As String * 40
    condition As String * 12
    conditionoverall As String * 12
    whenadded As String * 20
    picturedisc As String * 40
    picturedisccondition As String * 40
    release As String * 16
    sealeddisc As String * 1
    labelcolor As String * 12
    labelcondition As String * 12
    overallcondition As String * 12
End Type

Dim answer As String * 1
Dim recordnumber As Integer
Dim recordnumbertotal As Integer
Dim tracknumbertotal(26) As Integer
Dim temp2 As String * 5
Dim TEMP2(26) As String
Dim temp3 As String * 5
Dim TEMP3(26) As String
Dim temp4 As String * 60
Dim temp5 As String * 60
Dim temp6 As String
Dim temp6(26) As String
Dim temp7 As String
Dim temp7(26) As Integer
Dim temp8 As String
Dim temp8(26) As String
Dim temp9 As String
Dim temp9(26) As String
Dim temp10 As String
Dim sidenumbers As Integer
Dim tracknumbers As Integer
Dim palbumid1 As String * 20
Dim palbumid2 As String * 20
Dim recordname As String * 40
Dim recorddamaged As String * 3
Dim recordproducer As String * 40
Dim recordboxset As String * 3
Dim recordcountry As String * 40
Dim recordreleaseyear As String * 4
Dim recordgenre As String * 20
Dim recordstyle As String * 40
Dim recordspeed As Integer
Dim recordsize As String * 7
Dim recordadded As String * 20
Dim recordclear As String * 3
Dim recordsamount As String * 20
Dim recordcolor As String * 12
Dim recordsealed As String * 3
Dim recordnumbers As Integer
Dim labelcolor As String * 12
Dim labelcondition As String * 12
Dim recordcondition As String * 12
Dim jacketcondition As String * 12
Dim overallcondition As String * 12
Dim signedrecord As String * 3
Dim kountz As Integer
Dim choice As Integer
Dim xxyyzz As String
Dim zzyyxx As String
Dim found As String * 30
Dim collection_33 As Integer
Dim collection_45 As Integer
Dim collection_78 As Integer
start:

_FullScreen
GoSub newimage
Cls
Dim Record As Album, albumid As String * 60, temp As String * 60
Open "recorddatabase.dat" For Random As #3 Len = Len(Record)

Do
    startit:
    Screen _NewImage(1000, 700, 32)
    Cls
    Print
    Print
    GoSub setcolor
    Print "    Record Database Main menu written by Russ Campbell (24) to exit "
    GoSub setcolor
    Print " ---------------------------------------------------------------------"
    GoSub setcolor
    Print " (1)  Record ID Side 1   (2)  Record ID Side 2      (3)  Record Name"
    GoSub setcolor
    Print " (4)  Record Damaged     (5)  Record Producer       (6)  Record Boxset"
    GoSub setcolor
    Print " (7)  Release Country    (8)  Release Year          (9)  Record Genre"
    GoSub setcolor
    Print " (10) Record Style       (11) Record Speed          (12) Record Size"
    GoSub setcolor
    Print " (13) Release Date       (14) Sealed Record         (15) Number of Records"
    GoSub setcolor
    Print " (16) Clear Record       (17) Color of Record       (18) Label Color"
    GoSub setcolor
    Print " (19) Label Condition    (20) Record Condition      (21) Jacket Condition"
    GoSub setcolor
    Print " (22) Overall Condition  (23) Signed Record         (24) Exit Program"
    Print
    GoSub setcolor
    Input " Enter Your Choice from 1 to 24 (24) Exits The Program : ", choice

    If choice < 1 Or choice > 24 Then GoTo startit
    If choice = 1 Then xxyyzz = palbumid1: zzyyxx = "Album ID Side 1"
    If choice = 2 Then xxyyzz = palbumid2: zzyyxx = "Album ID Side 2"
    If choice = 3 Then xxyyzz = recordname: zzyyxx = "Record Name"
    If choice = 4 Then xxyyzz = recorddamaged: zzyyxx = "Record Damaged"
    If choice = 5 Then xxyyzz = recordproducer: zzyyxx = "Record Producer"
    If choice = 6 Then xxyyzz = recordboxset: zzyyxx = "Record Boxset"
    If choice = 7 Then xxyyzz = recordcountry: zzyyxx = "Record Country"
    If choice = 8 Then xxyyzz = recordreleaseyear: zzyyxx = "Record Release Year"
    If choice = 9 Then xxyyzz = recordgenre: zzyyxx = "Record Genre"
    If choice = 10 Then xxyyzz = Record.style: zzyyxx = "Record Style"
    If choice = 11 Then xxyyzz = Str$(recordspeed): zzyyxx = "Record Speed"
    If choice = 12 Then xxyyzz = recordsize: zzyyxx = "Record Size"
    If choice = 13 Then xxyyzz = recordadded: zzyyxx = "Record Date"
    If choice = 14 Then xxyyzz = recordsealed: zzyyxx = "Sealed Record"
    If choice = 15 Then xxyyzz = Str$(kountz): zzyyxx = "Number of Records"
    If choice = 16 Then xxyyzz = recordclear: zzyyxx = "Clear Record"
    If choice = 17 Then xxyyzz = recordcolor: zzyyxx = "Color of Record"
    If choice = 18 Then xxyyzz = labelcolor: zzyyxx = "Label Color"
    If choice = 19 Then xxyyzz = labelcondition: zzyyxx = "Label Condition"
    If choice = 20 Then xxyyzz = recordcondition: zzyyxx = "Record Condition"
    If choice = 21 Then xxyyzz = jacketcondition: zzyyxx = "Jacket Condition"
    If choice = 22 Then xxyyzz = overallcondition: zzyyxx = "Overall Condition"
    If choice = 23 Then xxyyzz = signedrecord: zzyyxx = "Signed Record"
    If choice = 24 Then GoTo finish
    MaxRecord = LOF(3) \ Len(Record)
    recordnumber = 0
    found = ""
    For iii = 1 To MaxRecord
        Get #3, iii, Record
        If palbumid1 = Record.albumid1 Then 'we found the record albumid
            found = Record.albumid1
        End If
        If palbumid2 = Record.albumid2 Then 'we found the record albumid
            found = Record.albumid2
        End If

        If recordname = Record.title Then 'We found the Record Title
            found = Record.title
        End If
        If recorddamaged = Record.damaged Then 'We found a damaged or warped record
            found = Record.damaged
        End If

        If recordproducer = Record.producer Then 'We found the record Producer
            found = Record.producer
        End If
        If recordboxset = Record.boxset Then 'We found a Record Boxset
            found = Record.boxset
        End If
        If recordcountry = Record.country Then 'We found the Record Country
            found = Record.country
        End If
        If recordreleaseyear = Record.released Then 'We found the Release year
            found = Record.released
        End If
        If recordgenre = Record.genre Then 'we found the Record Genre
            found = Record.genre
        End If
        If recordstyle = Record.style Then 'We Found The Record Style
            found = Record.style
        End If
        If recordspeed = Record.speed Then 'We found the Record Speed
            found = Str$(Record.speed)
        End If
        If recordsize = Record.size Then 'We Found he Record Size
            found = Record.size
        End If
        If recordadded = Record.whenadded Then 'We found the Record added date
            found = Record.whenadded
        End If
        If recordsamount = Str$(Record.numberofrecords) Then 'We found Number of Record
            found = Str$(Record.numberofrecords)
            numberofrecords = (Record.numberofrecords)
        End If
        If recordclear = Record.cleer Then 'We found clear records"
            found = Record.cleer
        End If
        If recordcolor = Record.c0l0r Then 'We Found records of a certain color
            found = Record.c0l0r
        End If
        If labelcolor = Record.labelcolor Then 'We found labels on the record of a certain color
            found = Record.labelcolor
        End If
        If labelcondition = Record.labelcondition Then 'we found the condition of the labels in the album
            found = Record.labelcondition
        End If
        If recordcondition = Record.condition Then 'WE found the Record condition
            found = Record.condition
        End If
        If overallcondition = Record.overallcondition Then 'We found the overall condition
            found = Record.overallcondition
        End If
        If signedrecord = Record.signed Then 'We found the overall condition
            found = Record.signed
        End If

        If recordnumber > 0 Then 'we found somweone
            Cls
            Print
            GoSub setcolor
            zzyyxx = RTrim$(zzyyxx)
            Print " Field - "; zzyyxx; " - Is Found in database."
            GoSub setcolor
            Print " EXISTING RECORD."
        End If
        Print
        Print " Record ID Side One                : ", Record.albumid1
        Print " Record ID Side Two                : "; Record.albumid2
        Print " Name of the Record                : ", Record.title
        Print " Is Record Damaged                 : ", Record.damaged
        Print " Producer of This Record           : ", Record.producer
        Print " Record is part of a boxset        : ", Record.boxset
        Print " Country of record                 : ", Record.country
        Print " Release Date of This Record       : ", Record.release
        Print " Genre of this record              : ", Record.genre
        Print " Enter Style of this album         : ", Record.style
        Print " Record Speed                      : ", Record.speed
        Print " Record Size                       : ", Record.size
        Print " When did you add this record      : ", Record.whenadded
        Print " Is the record sealed NIP          : ", Record.sealeddisc
        Print " How many records in this album    : ", Record.numberofrecords
        Print " Is it a clear record              : "; Record.cleer
        Print " Color of record                   : "; Record.c0l0r
        Print " Color of label                    : "; Record.labelcolor
        Print " Condition of Label                : "; Record.labelcondition
        Print " Condition of Record               : "; Record.condition
        Print " Condition of Cover                : "; Record.jacketcondition
        Print " Overall condition of Record Album : "; Record.overallcondition
        Print " Is Record Signed                  : "; Record.signed
        editrecords:
        Print
        Print " Rec#     Track #        Track Name                         Track Length or Artist        Track Conditon"
        Print "--------------------------------------------------------------------------------------------------------"
        pat$ = " \    \   \   \    \                                     \   \                 \         \             \"
        For dr = 1 To Record.numberofrecords
            xxyy = xxyy + 1
            For wwy = 1 To Record.numberoftracks_1
                Print Using pat$; Record.tracklistrecordnumber; Record.tracklistheader_1; Record.tracklistname_1; Record.tracklistlength_1; Record.tracklistquality_1
            Next

            For wwx = 1 To Record.numberoftracks_2
                Print Using pat$; Record.tracklistrecordnumber; Record.tracklistheader_2; Record.tracklistname_2; Record.tracklistlength_2; Record.tracklistquality_2
            Next
        Next



        Print
        recordnumber = iii
        Print

        Exit For 'no need to search any more once we're found

    Next


    If recordnumber = 0 Then 'we didn't find anyone
        Cls
        Print
        GoSub setcolor
        zzyyxx = RTrim$(zzyyxx)
        Print " Field - " + zzyyxx + " - Is Not Found in database."
        Print " NEW RECORD."
        recordnumber = MaxRecord + 1
    End If
    Record.albumid1 = palbumid1
    Record.albumid2 = palbumid2
    GoSub setcolor
    Input " Record Album ID Number Side One  : ", Record.albumid1 'add a new record, or update an old one.

    GoSub setcolor
    Input " Record Album ID NUmber Side Two  : ", Record.albumid2 'add a new record, or update an old one.w
    If recordnumber = 0 Then Close #3: GoTo finish
    GoSub setcolor
    Input " Enter Name of This Record        : ", Record.title
    GoSub setcolor
    Input " Enter Record Label Producer      : ", Record.producer
    GoSub setcolor
    Input " Enter Label of this album        : ", Record.label
    GoSub setcolor
    Input " Is This a boxed set album        : ", Record.boxset
    GoSub setcolor
    Input " Enter Country of This album      : ", Record.country
    GoSub setcolor
    Input " Enter Release Date of this album : ", Record.release
    GoSub setcolor
    Input " Enter Genre of this album        : ", Record.genre
    GoSub setcolor
    Input " Enter Style of this album        : ", Record.style
    GoSub setcolor
    Input " Is it a clear record [Y]/[N]     : ", Record.cleer
    GoSub setcolor
    Input " What color is the record         : ", Record.c0l0r
    GoSub setcolor
    Input " What color is the record label   : ", Record.labelcolor
    GoSub setcolor
    Input " Condition of record labels       : ", Record.labelcondition
    GoSub setcolor
    Input " Is it a Signed record [Y]/[N]    : ", Record.signed
    GoSub setcolor
    Input " Is it a picture Disc [Y]/[N]     : ", Record.picturedisc
    GoSub setcolor
    Input " Condition of the Jacket Overall  : ", Record.jacketcondition
    GoSub setcolor
    Input " Condition of the Record Overall  : ", Record.condition
    GoSub setcolor
    Input " Condition of Whole album overall : ", Record.conditionoverall
    GoSub setcolor
    Input " When did you add this record     : ", Record.whenadded
    GoSub setcolor
    Input " Is the record sealed NIP         : ", Record.sealeddisc
    GoSub setcolor
    Input " How many records in this album   : ", Record.numberofrecords
    GoSub setcolor
    If Record.numberofrecords = 0 Then Record.numberofrecords = 1
    Print
    Cls

    For I = 1 To Record.numberofrecords

        For j = 1 To 2
            GoSub setcolor
            Print " Enter The Number of Tracks for Record # "; I; " Side # "; j
            GoSub setcolor
            If j = 1 Then
                Input " Number of Tracks : ", Record.numberoftracks_1
            End If
            GoSub setcolor
            If j = 2 Then
                Input " Number of Tracks : ", Record.numberoftracks_2
                GoSub setcolor
            End If
        Next
    Next

    ii = I
    xx = x
    recordnumbertotal(ii) = ii
    tracknumbertotal(xx) = xx
    Input " Do you want to put in timing (length) of each track [Y]/[N] for side 1 :", Record.tracktiming
    For zzz = 1 To Record.numberofrecords
        Cls
        For www = 1 To Record.numberoftracks_1
            GoSub setcolor
            Print " Record Number : "; xxyy; "  Track Number Side 1  : "; zzz
            GoSub setcolor
            Input " Track Name    : ", temp5
            If Record.tracktiming = "Y" Or Record.tracktiming = "y" Then
                GoSub setcolor
                Input " Track Length  : ", Record.tracklistlength_1
            Else
                GoSub setcolor
                Input " Track Artist  : ", temp6

            End If
            GoSub setcolor
            Input " Track Quality : ", temp7

        Next
        Cls
        Input " Do you wish to put in timing (length) of each track [Y]/[N] for Side 2 :", Record.tracktiming
        For xxx = 1 To Record.numberoftracks_2
            GoSub setcolor
            Print " Record Number : "; zzz; "  Track Number Side 2  : "; xxx
            GoSub setcolor
            Input " Track Name    : ", temp8
            If Record.tracktiming = "Y" Or Record.tracktiming = "y" Then
                GoSub setcolor
                Input " Track Length  : ", temp9
            Else
                GoSub setcolor
                Input " Track Artist  : ", temp9
            End If
            GoSub setcolor

            Input " Track Quality : ", temp10
        Next
        Cls

        GoSub setcolor
        Screen _NewImage(1800, 900)
        Print " Rec #    Track #              Track Name                    Track Length or Artist              Track Condition"
        GoSub setcolor
        Print " ---------------------------------------------------------------------------------------------------------------"
        pat$ = " \    \   \    \    \                                 \   \                      \              \             \"
        For dr = 1 To Record.numberofrecords
            xxyy = xxyy + 1
            If xxyy = Record.numberofrecords Then
                xxyy = xxyy
            End If
            x = 0
            For wwy = 1 To Record.numberoftracks_1
                x = x + 1
                If xxyy = 1 Then
                    TEMP2(xxyy) = Record.tracklistrecordnumber
                    TEMP3(wwy) = Record.tracklistheader_1
                    Record.tracklistrecordnumber = TEMP2(xxyy)
                    Record.tracklistheader_1 = TEMP3(wwy)
                ElseIf xxyy > 1 Then
                    TEMP2(xxyy) = Record.tracklistrecordnumber
                    TEMP3(wwy) = Record.tracklistheader_1
                    Record.tracklistrecordnumber = TEMP2(xxyy)
                    Record.tracklistheader_1 = TEMP3(wwy)
                End If
                Locate 4 + x, 3
                Print Using pat$; palbumid1, Record.tracklistrecordnumber; Record.tracklistheader_1; Record.tracklistname_1; Record.tracklistlength_1; Record.tracklistquality_1
            Next
            x = 0
            For wwy = 1 To Record.numberoftracks_2
                x = x + 1
                If xxyy = 1 Then
                    TEMP2(xxyy) = Record.tracklistrecordnumber
                    TEMP3(wwy) = Record.tracklistheader_1
                    Record.tracklistrecordnumber = TEMP2(xxyy)
                    Record.tracklistheader_1 = TEMP3(wwy)
                ElseIf xxyy > 1 Then
                    TEMP2(xxyy) = Record.tracklistrecordnumber
                    TEMP3(wwy) = Record.tracklistheader_1
                    Record.tracklistrecordnumber = TEMP2(xxyy)
                    Record.tracklistheader_1 = TEMP3(wwy)
                End If
                Locate 4 + x, 3
                Print Using pat$; palbumid2, Record.tracklistrecordnumber; Record.tracklistheader_2; Record.tracklistname_2; Record.tracklistlength_2; Record.tracklistquality_2
            Next
        Next


    Next
    check:
    Print
    GoSub setcolor
    Cls
    Screen _NewImage(1800, 900)
    Print
    Print " Is this correct [Y]es or [N]o  [Defaults to [Y]es] By Just pressing Enter]"
    answer = Input$(1)
    answer = UCase$(answer)
    If answer = "Y" Then
        GoTo nex
    End If
    If answer = "" Then
        GoTo nex
    ElseIf answer = "N" Then
        edittracks:
        start2:
        Print
        Print " Edit Records"
        Print
        Input " Record Number : ", recordnumber
        Input " Side Number   : ", sidenumber
        Input " Track Number  : ", tracknumber
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
    End If
    nex:
    I = recordnumber
    ww = tracknumber
    Put #3, recordnumber, Record
    nex2:
    Input " Enter or Search For Another One [Y]es [N]o : ", answer
    If answer = "N" Or answer = "n" Then GoTo finish
    If answer = "Y" Or answer = "N" Then GoTo finish
    End
    writeandgetrecords:
    For ur = 1 To 2
        If ur = 1 Then
            Open "program1.dat" For Output As #1
            Open "program2.dat" For Output As #2
            kk = kk + 1
            For z = 1 To kountz
                temp2 = "A01_1"
                temp3 = "A01_1"
                Mid$(temp2, 1, 1) = LTrim$(Chr$(64 + kk))
                For R = 1 To Record.numberoftracks_1
                    If R < 10 Then
                        Mid$(temp3, 3, 1) = LTrim$(Str$(R))
                    ElseIf R > 9 Then
                        Mid$(temp3, 2, 2) = LTrim$(Str$(R))
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

                Input #1, TEMP2(zxy)
                Input #2, TEMP3(zxy)

            Next
        End If
        Close #1
        Close #2
        If ur = 2 Then
            Open "program3.dat" For Output As #1
            Open "program4.dat" For Output As #2
            For z = 1 To kountz
                temp4 = "A01_2"
                temp5 = "A01_2"
                Mid$(temp4, 1, 1) = LTrim$(Chr$(64 + kk))
                For R = 1 To Record.numberoftracks_2
                    If R < 10 Then
                        Mid$(temp5, 3, 1) = LTrim$(Str$(R))
                    ElseIf R > 9 Then
                        Mid$(temp5, 2, 2) = LTrim$(Str$(R))
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
Loop
Close #1
Close #2

Return
setcolor:
Screen 12

alpha$ = "3F" 'solid alpha colors only
Out &H3C8, 17: Out &H3C9, 41: Out &H3C9, 17: Out &H3C9, 12: 'set black background to dark blue


attribute = Int(15 * Rnd(1) + 1)
Out &H3C7, attribute 'set color attribute to read

red$ = Hex$(Inp(&H3C9) * 4) 'convert port setting to 32 bit values
grn$ = Hex$(Inp(&H3C9) * 4)
blu$ = Hex$(Inp(&H3C9) * 4)
If Len(red$) = 1 Then red$ = "2F" + red$ '2 hex digits required
If Len(grn$) = 1 Then grn$ = "4C" + grn$ 'for low or zero hex values
If Len(blu$) = 1 Then blu$ = "1C" + blu$
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
    _Limit 3 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'decrease black box transparency
    _Display
Next

' Fade out
For i% = 0 To 255 Step 5
    _Limit 3 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'increase black box transparenccy
    _Display
Next



img& = _LoadImage("record.png") 'from http://www.qb64.org/images/qb64bee.png (or use any 24/32 bit image)
'Turn off auto display
_Display

' Fade in
For i% = 255 To 0 Step -5
    _Limit 7 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'decrease black box transparency
    _Display
Next

' Fade out
For i% = 0 To 255 Step 5
    _Limit 7 'control fade speed
    _PutImage (0, 0)-(600, 400), img&
    Line (0, 0)-(600, 400), _RGBA(0, 0, 0, i%), BF 'increase black box transparenccy
    _Display
Next
Return
conversion1:
For ix = 1 To www
    If ix = www Then
        Record.tracklistname_1 = temp6(www)
        Record.tracklistlength_1 = temp7(www)
        Record.tracklistartist_1 = temp8(www)
        Record.tracklistquality_1 = temp9(www)
    End If
Next
Return
conversion2:
For ziix = 1 To xxx
    If ziix = xxx Then
        Record.tracklistname_2 = temp6(xxx)
        Record.tracklistlength_2 = temp7(xxx)
        Record.tracklistartist_2 = temp8(xxx)
        Record.tracklistquality_2 = temp9(xxx)
    End If
Next
Return
invalid_entry:
If entry = 0 Then
    GoSub setcolor
    GoTo startit
End If
Return
finish:
End:

