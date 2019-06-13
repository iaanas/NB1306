.class public Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "VMSFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "d-MMM-yyyy HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(.*?;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 92
    const-string v0, "(.*?;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 245
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "VMS"

    const-string v2, "d-MMM-yyyy HH:mm:ss"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isVersioning()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 20
    .param p1, "entry"    # Ljava/lang/String;

    .line 110
    move-object/from16 v1, p0

    const-wide/16 v2, 0x200

    .line 112
    .local v2, "longBlock":J
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 114
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v5, v0

    .line 115
    .local v5, "f":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 116
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "size":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "datestr":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "owner":Ljava/lang/String;
    new-array v14, v11, [Ljava/lang/String;

    .line 121
    .local v14, "permissions":[Ljava/lang/String;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    aput-object v0, v14, v15

    .line 122
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v7

    .line 123
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v9

    .line 126
    :try_start_0
    invoke-super {v1, v12}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    move-object v0, v4

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 136
    :goto_0
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v15, ","

    invoke-direct {v11, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v11, "t":Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v15

    if-eq v15, v7, :cond_1

    if-eq v15, v9, :cond_0

    .line 147
    .local v0, "grp":Ljava/lang/String;
    .local v4, "user":Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    const/4 v4, 0x0

    goto :goto_1

    .line 143
    :cond_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 145
    goto :goto_1

    .line 139
    .end local v0    # "grp":Ljava/lang/String;
    .end local v4    # "user":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 140
    .restart local v0    # "grp":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 141
    .restart local v4    # "user":Ljava/lang/String;
    nop

    .line 151
    :goto_1
    const-string v15, ".DIR"

    invoke-virtual {v8, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    const/4 v9, -0x1

    if-eq v15, v9, :cond_2

    .line 153
    invoke-virtual {v5, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const/4 v9, 0x0

    goto :goto_2

    .line 157
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 161
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->isVersioning()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 163
    invoke-virtual {v5, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :cond_3
    const-string v15, ";"

    invoke-virtual {v8, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v8, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 168
    invoke-virtual {v5, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 172
    :goto_3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v15, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v15, "name":Ljava/lang/String;
    mul-long v7, v16, v2

    .line 173
    .local v7, "sizeInBytes":J
    invoke-virtual {v5, v7, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 175
    invoke-virtual {v5, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 184
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "access":I
    :goto_4
    const/4 v1, 0x3

    if-ge v9, v1, :cond_7

    .line 186
    aget-object v1, v14, v9

    .line 188
    .local v1, "permission":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "grp":Ljava/lang/String;
    .local v16, "grp":Ljava/lang/String;
    const/16 v0, 0x52

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move-wide/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "longBlock":J
    .local v18, "longBlock":J
    invoke-virtual {v5, v9, v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 189
    const/16 v0, 0x57

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v3, 0x1

    invoke-virtual {v5, v9, v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 190
    const/16 v0, 0x45

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v2, 0x2

    invoke-virtual {v5, v9, v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 184
    .end local v1    # "permission":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-wide/from16 v2, v18

    goto :goto_4

    .end local v16    # "grp":Ljava/lang/String;
    .end local v18    # "longBlock":J
    .restart local v0    # "grp":Ljava/lang/String;
    .restart local v2    # "longBlock":J
    :cond_7
    move-object/from16 v16, v0

    move-wide/from16 v18, v2

    .line 193
    .end local v0    # "grp":Ljava/lang/String;
    .end local v2    # "longBlock":J
    .end local v9    # "access":I
    .restart local v16    # "grp":Ljava/lang/String;
    .restart local v18    # "longBlock":J
    return-object v5

    .line 195
    .end local v4    # "user":Ljava/lang/String;
    .end local v5    # "f":Lorg/apache/commons/net/ftp/FTPFile;
    .end local v7    # "sizeInBytes":J
    .end local v10    # "size":Ljava/lang/String;
    .end local v11    # "t":Ljava/util/StringTokenizer;
    .end local v12    # "datestr":Ljava/lang/String;
    .end local v13    # "owner":Ljava/lang/String;
    .end local v14    # "permissions":[Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "grp":Ljava/lang/String;
    .end local v18    # "longBlock":J
    .restart local v2    # "longBlock":J
    :cond_8
    move-object/from16 v6, p1

    move-wide/from16 v18, v2

    .end local v2    # "longBlock":J
    .restart local v18    # "longBlock":J
    return-object v4
.end method

.method public parseFileList(Ljava/io/InputStream;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2
    .param p1, "listStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    .line 263
    .local v0, "engine":Lorg/apache/commons/net/ftp/FTPListParseEngine;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, "entry":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v0, :cond_3

    .line 218
    const-string v2, "Directory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Total"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    goto :goto_2

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 230
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2
.end method
