.class public Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "MacOsPeterFTPEntryParser.java"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 114
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 272
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 18
    .param p1, "entry"    # Ljava/lang/String;

    .line 130
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v2, v0

    .line 131
    .local v2, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 133
    const/4 v4, 0x0

    .line 135
    .local v4, "isDevice":Z
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "typeStr":Ljava/lang/String;
    const-string v7, "0"

    .line 139
    .local v7, "hardLinkCount":Ljava/lang/String;
    const/4 v8, 0x0

    .line 140
    .local v8, "usr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 141
    .local v9, "grp":Ljava/lang/String;
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "filesize":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x15

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x16

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "datestr":Ljava/lang/String;
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "name":Ljava/lang/String;
    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, "endtoken":Ljava/lang/String;
    :try_start_0
    invoke-super {v1, v11}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 159
    :goto_0
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v15, 0x2d

    if-eq v0, v15, :cond_1

    const/16 v15, 0x6c

    if-eq v0, v15, :cond_0

    packed-switch v0, :pswitch_data_0

    move v0, v14

    .line 180
    .local v0, "type":I
    const/4 v0, 0x3

    move v15, v4

    move v4, v0

    goto :goto_1

    .line 159
    .end local v0    # "type":I
    :pswitch_0
    move v0, v14

    .line 165
    .restart local v0    # "type":I
    const/4 v0, 0x2

    .line 166
    move v15, v4

    move v4, v0

    goto :goto_1

    .line 162
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x1

    .line 163
    .restart local v0    # "type":I
    move v15, v4

    move v4, v0

    goto :goto_1

    .line 159
    .end local v0    # "type":I
    :pswitch_2
    move v0, v14

    .line 172
    .restart local v0    # "type":I
    const/4 v4, 0x1

    .line 173
    const/4 v0, 0x0

    .line 174
    move v15, v4

    move v4, v0

    goto :goto_1

    .line 159
    .end local v0    # "type":I
    :cond_0
    move v0, v14

    .line 168
    .restart local v0    # "type":I
    const/4 v0, 0x2

    .line 169
    move v15, v4

    move v4, v0

    goto :goto_1

    .line 159
    .end local v0    # "type":I
    :cond_1
    :pswitch_3
    move v0, v14

    .line 177
    .restart local v0    # "type":I
    const/4 v0, 0x0

    .line 178
    move v15, v4

    move v4, v0

    .line 183
    .end local v0    # "type":I
    .local v4, "type":I
    .local v15, "isDevice":Z
    :goto_1
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 185
    const/4 v0, 0x4

    .line 186
    .local v0, "g":I
    const/16 v16, 0x0

    move v14, v0

    move/from16 v0, v16

    .local v0, "access":I
    .local v14, "g":I
    :goto_2
    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    .line 189
    invoke-virtual {v1, v14}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "-"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v17, v6

    const/4 v6, 0x1

    .end local v6    # "typeStr":Ljava/lang/String;
    .local v17, "typeStr":Ljava/lang/String;
    xor-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 191
    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v2, v0, v6, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 194
    add-int/lit8 v5, v14, 0x2

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "execPerm":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 197
    const/4 v3, 0x1

    const/4 v6, 0x2

    invoke-virtual {v2, v0, v6, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_3

    .line 195
    :cond_2
    const/4 v3, 0x1

    const/4 v6, 0x2

    .line 201
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v6, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 186
    .end local v5    # "execPerm":Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v3, p1

    move-object/from16 v6, v17

    const/4 v5, 0x1

    goto :goto_2

    .end local v17    # "typeStr":Ljava/lang/String;
    .restart local v6    # "typeStr":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v6

    .line 205
    .end local v0    # "access":I
    .end local v6    # "typeStr":Ljava/lang/String;
    .restart local v17    # "typeStr":Ljava/lang/String;
    if-nez v15, :cond_4

    .line 209
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    goto :goto_4

    .line 211
    :catch_1
    move-exception v0

    .line 217
    :cond_4
    :goto_4
    invoke-virtual {v2, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 222
    :try_start_2
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    goto :goto_5

    .line 224
    :catch_2
    move-exception v0

    .line 229
    :goto_5
    if-nez v13, :cond_5

    .line 231
    invoke-virtual {v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_7

    .line 237
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 238
    const/4 v3, 0x2

    if-ne v4, v3, :cond_7

    .line 241
    const-string v0, " -> "

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, "end":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 245
    invoke-virtual {v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 249
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v12, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 250
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    .line 253
    .end local v0    # "end":I
    :goto_6
    goto :goto_7

    .line 256
    :cond_7
    invoke-virtual {v2, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 259
    :goto_7
    return-object v2

    .line 261
    .end local v7    # "hardLinkCount":Ljava/lang/String;
    .end local v8    # "usr":Ljava/lang/String;
    .end local v9    # "grp":Ljava/lang/String;
    .end local v10    # "filesize":Ljava/lang/String;
    .end local v11    # "datestr":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "endtoken":Ljava/lang/String;
    .end local v14    # "g":I
    .end local v15    # "isDevice":Z
    .end local v17    # "typeStr":Ljava/lang/String;
    .local v4, "isDevice":Z
    :cond_8
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
