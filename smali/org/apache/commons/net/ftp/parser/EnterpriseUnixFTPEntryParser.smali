.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "EnterpriseUnixFTPEntryParser.java"


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 18
    .param p1, "entry"    # Ljava/lang/String;

    .line 90
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v2, v0

    .line 91
    .local v2, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "usr":Ljava/lang/String;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "grp":Ljava/lang/String;
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "filesize":Ljava/lang/String;
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "mo":Ljava/lang/String;
    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "da":Ljava/lang/String;
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "yr":Ljava/lang/String;
    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "hr":Ljava/lang/String;
    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "min":Ljava/lang/String;
    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "name":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 106
    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 110
    move-object/from16 v16, v5

    .end local v5    # "usr":Ljava/lang/String;
    .local v16, "usr":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 117
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 118
    .local v4, "cal":Ljava/util/Calendar;
    const/16 v5, 0xe

    invoke-virtual {v4, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v0, 0xd

    invoke-virtual {v4, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/16 v0, 0xc

    invoke-virtual {v4, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 121
    const/16 v5, 0xb

    invoke-virtual {v4, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 123
    const-string v15, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 124
    .local v15, "pos":I
    div-int/lit8 v5, v15, 0x4

    .line 129
    .local v5, "month":I
    const/4 v0, 0x1

    if-eqz v10, :cond_0

    .line 132
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v4, v0, v14}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    const/16 v0, 0xb

    move v14, v0

    .local v0, "missingUnit":I
    goto :goto_2

    .line 156
    .end local v0    # "missingUnit":I
    :catch_1
    move-exception v0

    const/4 v14, 0x0

    move v0, v14

    .restart local v0    # "missingUnit":I
    goto :goto_3

    .line 138
    .end local v0    # "missingUnit":I
    :cond_0
    const/16 v14, 0xd

    .line 139
    .local v14, "missingUnit":I
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 143
    .local v17, "year":I
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 145
    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    goto :goto_1

    .line 143
    :cond_1
    move/from16 v0, v17

    .line 147
    .end local v17    # "year":I
    .local v0, "year":I
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 148
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v0

    const/16 v0, 0xb

    .end local v0    # "year":I
    .restart local v17    # "year":I
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 149
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 151
    .end local v17    # "year":I
    :goto_2
    const/4 v0, 0x2

    invoke-virtual {v4, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 152
    const/4 v0, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->clear(I)V

    .line 154
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    goto :goto_3

    .line 156
    :catch_2
    move-exception v0

    .line 160
    :goto_3
    invoke-virtual {v2, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 162
    return-object v2

    .line 164
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "month":I
    .end local v6    # "grp":Ljava/lang/String;
    .end local v7    # "filesize":Ljava/lang/String;
    .end local v8    # "mo":Ljava/lang/String;
    .end local v9    # "da":Ljava/lang/String;
    .end local v10    # "yr":Ljava/lang/String;
    .end local v11    # "hr":Ljava/lang/String;
    .end local v12    # "min":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "missingUnit":I
    .end local v15    # "pos":I
    .end local v16    # "usr":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
