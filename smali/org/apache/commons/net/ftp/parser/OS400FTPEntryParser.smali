.class public Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "OS400FTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yy/MM/dd HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+(?:(\\S+)\\s*)?"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 276
    const-string v0, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+(?:(\\S+)\\s*)?"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 278
    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 415
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 429
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "OS/400"

    const-string v2, "yy/MM/dd HH:mm:ss"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 13
    .param p1, "entry"    # Ljava/lang/String;

    .line 285
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 286
    .local v0, "file":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 291
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "usr":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "filesize":Ljava/lang/String;
    const-string v5, ""

    .line 294
    .local v5, "datestr":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_0

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 296
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "typeStr":Ljava/lang/String;
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    .line 305
    .local v8, "mustScanForPathSeparator":Z
    :try_start_0
    invoke-super {p0, v5}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 307
    :catch_0
    move-exception v9

    .line 313
    :goto_0
    const-string v9, "*STMF"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/16 v10, 0x2f

    if-eqz v9, :cond_3

    .line 315
    const/4 v9, 0x0

    .line 316
    .local v9, "type":I
    invoke-direct {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 318
    :cond_2
    return-object v2

    .line 321
    .end local v9    # "type":I
    :cond_3
    const-string v9, "*DIR"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 323
    const/4 v9, 0x1

    .line 324
    .restart local v9    # "type":I
    invoke-direct {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 326
    :cond_4
    return-object v2

    .line 329
    .end local v9    # "type":I
    :cond_5
    const-string v9, "*FILE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 338
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, ".SAVF"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 340
    const/4 v8, 0x0

    .line 341
    const/4 v9, 0x0

    .restart local v9    # "type":I
    goto :goto_2

    .line 345
    .end local v9    # "type":I
    :cond_6
    return-object v2

    .line 348
    :cond_7
    const-string v9, "*MEM"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 350
    const/4 v8, 0x0

    .line 351
    const/4 v9, 0x0

    .line 353
    .restart local v9    # "type":I
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 355
    return-object v2

    .line 357
    :cond_8
    invoke-direct {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_1

    .line 367
    :cond_9
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 359
    :cond_a
    :goto_1
    return-object v2

    .line 371
    .end local v9    # "type":I
    :cond_b
    const/4 v9, 0x3

    .line 374
    .restart local v9    # "type":I
    :cond_c
    :goto_2
    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 376
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 380
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    goto :goto_3

    .line 382
    :catch_1
    move-exception v2

    .line 387
    :goto_3
    const-string v2, "/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 389
    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v1

    invoke-virtual {v7, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 391
    :cond_d
    if-eqz v8, :cond_e

    .line 393
    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 394
    .local v1, "pos":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    .line 396
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 400
    .end local v1    # "pos":I
    :cond_e
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 402
    return-object v0

    .line 404
    .end local v3    # "usr":Ljava/lang/String;
    .end local v4    # "filesize":Ljava/lang/String;
    .end local v5    # "datestr":Ljava/lang/String;
    .end local v6    # "typeStr":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "mustScanForPathSeparator":Z
    .end local v9    # "type":I
    :cond_f
    return-object v2
.end method
