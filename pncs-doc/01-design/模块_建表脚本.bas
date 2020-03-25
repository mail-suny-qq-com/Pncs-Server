Attribute VB_Name = "模块_建表脚本"

Sub createTable()
    Dim sqlFileName As String '文件名
    Application.ScreenUpdating = False
    Dim crtDb2String, strDb20, strDb21, strDb22, strDb23, strDb24, strDb25, strDb26, strDb27, strDb28, strDb29, strDb210, strDb211, strDb212, strDb213  As String
    Dim crtOraString, strOra0, strOra1, strOra2, strOra3, strOra4, strOra5, strOra6, strOra7, strOra8, strOra9, strOra10, strOra11, strOra12, strOra13 As String
    Dim crtMysString, strMys0, strMys1, strMys2, strMys3, strMys4, strMys5, strMys6, strMys7, strMys8, strMys9, strMys10, strMys11, strMys12, strMys13 As String
    'Dim arr(100) As String
   
    '初始化常量
    crtDb2String = "-- 建表脚本-DB2" & Chr(10)
    crtOraString = "-- 建表脚本-Oracle" & Chr(10)
    crtMysString = "-- 建表脚本-Mysql" & Chr(10)
    For Each sh In Worksheets  'sheet数组
        strDb21 = "CREATE TABLE "
        strOra1 = "CREATE TABLE "
        strMys1 = "CREATE TABLE "
        strDb22 = ""
        strDb23 = "" '主键
        strOra3 = ""
        strMys3 = ""
        strDb24 = "" '外键
        strOra4 = ""
        strDb25 = ""
        strDb26 = ""
        strDb27 = ") IN TS_PAMS_PROD INDEX IN TS_PAMS_PROD_IND;" & Chr(10) & " COMMENT ON TABLE "
        strOra7 = ");" & Chr(10) & " COMMENT ON TABLE "
        strMys7 = ")" & Chr(10) & " COMMENT = "
        strDb28 = ""
        strDb29 = " IS "
        strOra9 = " IS "
        strDb210 = ""
        strDb211 = " COMMENT ON "
        strOra11 = " "
        strDb212 = ""
        strOra12 = ""
        strDb213 = ");" & Chr(10) & "COMMIT;"
        strOra13 = ""
        
        If InStr(sh.Name, "表") > 0 Then ' <> "数据依赖" And sh.Name <> "修订记录" Then
            sh.Select
            strDb22 = sh.Range("B" & 2) + "(" & Chr(10)     '表名
            strOra2 = sh.Range("B" & 2) + "(" & Chr(10)     '表名
            strMys2 = sh.Range("B" & 2) + "(" & Chr(10)     '表名
            strDb28 = Range("B" & 2)  '表名
            strOra8 = Range("B" & 2)  '表名
            strMys8 = ""
            strDb210 = "'" + Range("B" & 1) + "';" & Chr(10)                 '表描述
            strOra10 = "'" + Range("B" & 1) + "';" & Chr(10)                 '表描述
            strMys10 = "'" + Range("B" & 1) + "';" & Chr(10)                 '表描述
            strDb211 = strDb211 + strDb22
            
            i = 4
            Do While Range("C" & i) <> ""
                strDb22 = strDb22 + "  "
                strOra2 = strOra2 + "  "
                strDb212 = strDb212 + Range("C" & i) + " IS  '" + Range("D" & i) + "'," & Chr(10)
                strOra12 = strOra12 + "COMMENT ON COLUMN " + strOra8 + "." + Range("C" & i) + " IS  '" + Range("D" & i) + "';" & Chr(10)
                
                If Range("B" & i) <> "" Or Range("F" & i) <> "" Then
                    strDb22 = strDb22 + Range("C" & i) + "  " + Range("E" & i) + " NOT NULL," & Chr(10)
                    strOra2 = strOra2 + Range("C" & i) + "  " + Replace(Replace(Range("E" & i), "VARCHAR", "VARCHAR2"), "TIMESTAMP", "DATE") + " NOT NULL," & Chr(10)
                    strMys2 = strMys2 + Range("C" & i) + "  " + Range("E" & i) + " NOT NULL  COMMENT '" + Range("D" & i) + "'," & Chr(10)
                    If Range("B" & i) <> "" Then '主键处理
                        If strDb23 = "" Then
                            strDb23 = strDb23 + "CONSTRAINT " + Range("B" & 2) + " PRIMARY KEY (" + Range("C" & i)
                        Else
                            strDb23 = strDb23 + "," + Range("C" & i)
                        End If
                        If strOra3 = "" Then
                            strOra3 = strOra3 + "CONSTRAINT " + Range("B" & 2) + " PRIMARY KEY (" + Range("C" & i)
                        Else
                            strOra3 = strOra3 + "," + Range("C" & i)
                        End If
                        
                        If strMys3 = "" Then
                            strMys3 = strMys3 + " PRIMARY KEY (" + Range("C" & i)
                        Else
                            strMys3 = strMys3 + "," + Range("C" & i)
                        End If
                    End If
                    If Range("F" & i) <> "" And InStr(Range("F" & i), "FOREIGN KEY") > 0 Then '外键键处理
                        strDb24 = strDb24 + "CONSTRAINT " + Range("B" & 2) + " FOREIGN KEY (" + Range("C" & i) + ") REFERENCES " + Replace(Range("F" & i), "FOREIGN KEY", "") + ", "
                        strOra4 = strOra4 + "CONSTRAINT " + Range("B" & 2) + " FOREIGN KEY (" + Range("C" & i) + ") REFERENCES " + Replace(Range("F" & i), "FOREIGN KEY", "") + ", "
                    End If
                Else
                    strDb22 = strDb22 + Range("C" & i) + "  " + Range("E" & i) + "," & Chr(10)
                    strOra2 = strOra2 + Range("C" & i) + "  " + Replace(Replace(Range("E" & i), "VARCHAR", "VARCHAR2"), "TIMESTAMP", "DATE") + "," & Chr(10)
                    strMys2 = strMys2 + Range("C" & i) + "  " + Range("E" & i) + " COMMENT '" + Range("D" & i) + "'," & Chr(10)
                End If
            
                i = i + 1
            Loop
            '主键
            If strDb23 <> "" Then
                strDb23 = strDb23 + ")," & Chr(10)
            End If
            If strOra3 <> "" Then
                strOra3 = strOra3 + ")," & Chr(10)
            End If
            If strMys3 <> "" Then
                strMys3 = strMys3 + ")," & Chr(10)
            End If
            If strDb24 <> "" Then
                strDb24 = Left(strDb24, Len(strDb24) - 2) & Chr(10)
            ElseIf strDb23 <> "" Then
                strDb23 = Left(strDb23, Len(strDb23) - 2) & Chr(10)
            Else
                strDb22 = Left(strDb22, Len(strDb22) - 2) & Chr(10)
            End If
           
            If strOra4 <> "" Then
                strOra4 = Left(strOra4, Len(strOra4) - 2) & Chr(10)
            ElseIf strOra3 <> "" Then
                strOra3 = Left(strOra3, Len(strOra3) - 2) & Chr(10)
            Else
                strOra2 = Left(strOra2, Len(strOra2) - 2) & Chr(10)
            End If
            If strMys4 <> "" Then
                strMys4 = Left(strMys4, Len(strMys4) - 2) & Chr(10)
            ElseIf strOra3 <> "" Then
                strMys3 = Left(strMys3, Len(strMys3) - 2) & Chr(10)
            Else
                strMys2 = Left(strMys2, Len(strMys2) - 2) & Chr(10)
            End If
            '处理字段备注中的多余逗号
            If strDb212 <> "" Then
                strDb212 = Left(strDb212, Len(strDb212) - 2) & Chr(10)
            End If
                  
            crtDb2String = crtDb2String + "-- " + sh.Name & Chr(10) & strDb20 + strDb21 + strDb22 + strDb23 + strDb24 + strDb25 + strDb26 + strDb27 + strDb28 + strDb29 + strDb210 + strDb211 + strDb212 + strDb213 & Chr(10)
            crtOraString = crtOraString + "-- " + sh.Name & Chr(10) & strOra0 + strOra1 + strOra2 + strOra3 + strOra4 + strOra5 + strOra6 + strOra7 + strOra8 + strOra9 + strOra10 + strOra11 + strOra12 + strOra13 & Chr(10)
            crtMysString = crtMysString + "-- " + sh.Name & Chr(10) & strMys0 + strMys1 + strMys2 + strMys3 + strMys4 + strMys5 + strMys6 + strMys7 + strMys8 + strMys9 + strMys10 + strMys11 + strMys12 + strMys13 & Chr(10)
        End If
    Next
 
   
    
    sqlFileName = ThisWorkbook.path + "\" + Replace(ThisWorkbook.Name, "xlsm", "") + "-DB2.sql"
    Open sqlFileName For Output As #1
      Print #1, crtDb2String
      'Debug.Print crtDb2String
    Close #1
     sqlFileName = ThisWorkbook.path + "\" + Replace(ThisWorkbook.Name, "xlsm", "") + "-ORA.sql"
    Open sqlFileName For Output As #1
      Print #1, crtOraString
      'Debug.Print crtOraString
    Close #1
      sqlFileName = ThisWorkbook.path + "\" + Replace(ThisWorkbook.Name, "xlsm", "") + "-MYS.sql"
    Open sqlFileName For Output As #1
      Print #1, crtMysString
      'Debug.Print crtMysString
    Close #1
    Application.ScreenUpdating = True
    MsgBox "生成完毕"
   
    
End Sub





