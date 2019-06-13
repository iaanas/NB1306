.class public Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "UnixFTPEntryParser.java"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field private static final DEFAULT_DATE_FORMAT_JA:Ljava/lang/String; = "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field private static final DEFAULT_RECENT_DATE_FORMAT_JA:Ljava/lang/String; = "M\'\u6708\' d\'\u65e5\' HH:mm"

.field private static final JA_DAY:Ljava/lang/String; = "\u65e5"

.field private static final JA_MONTH:Ljava/lang/String; = "\u6708"

.field private static final JA_YEAR:Ljava/lang/String; = "\u5e74"

.field public static final NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field static final NUMERIC_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"


# instance fields
.field final trimLeadingSpaces:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "yyyy-MM-dd HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V
    .locals 1
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;
    .param p2, "trimLeadingSpaces"    # Z

    .line 198
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 200
    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->trimLeadingSpaces:Z

    .line 201
    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 373
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 16
    .param p1, "entry"    # Ljava/lang/String;

    .line 230
    move-object/from16 v1, p0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object v2, v0

    .line 231
    .local v2, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 233
    const/4 v4, 0x0

    .line 235
    .local v4, "isDevice":Z
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "typeStr":Ljava/lang/String;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "hardLinkCount":Ljava/lang/String;
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "usr":Ljava/lang/String;
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "grp":Ljava/lang/String;
    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "filesize":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x13

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x14

    invoke-virtual {v1, v12}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, "datestr":Ljava/lang/String;
    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "name":Ljava/lang/String;
    iget-boolean v13, v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->trimLeadingSpaces:Z

    if-eqz v13, :cond_0

    .line 245
    const-string v13, "^\\s+"

    const-string v14, ""

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 244
    :cond_0
    move-object v13, v0

    .line 250
    .end local v0    # "name":Ljava/lang/String;
    .local v13, "name":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "\u6708"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    .line 252
    .local v0, "jaParser":Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;
    new-instance v11, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v14, "UNIX"

    const-string v15, "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

    const-string v5, "M\'\u6708\' d\'\u65e5\' HH:mm"

    invoke-direct {v11, v14, v15, v5}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 254
    invoke-virtual {v0, v12}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    .line 255
    .end local v0    # "jaParser":Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;
    goto :goto_1

    .line 256
    :cond_1
    invoke-super {v1, v12}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    goto :goto_2

    .line 259
    :catch_0
    move-exception v0

    .line 268
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x2d

    if-eq v0, v11, :cond_3

    const/16 v11, 0x6c

    if-eq v0, v11, :cond_2

    packed-switch v0, :pswitch_data_0

    move v0, v5

    .line 289
    .local v0, "type":I
    const/4 v0, 0x3

    move v11, v4

    move v4, v0

    goto :goto_3

    .line 268
    .end local v0    # "type":I
    :pswitch_0
    move v0, v5

    .line 274
    .restart local v0    # "type":I
    const/4 v0, 0x2

    .line 275
    move v11, v4

    move v4, v0

    goto :goto_3

    .line 271
    .end local v0    # "type":I
    :pswitch_1
    const/4 v0, 0x1

    .line 272
    .restart local v0    # "type":I
    move v11, v4

    move v4, v0

    goto :goto_3

    .line 268
    .end local v0    # "type":I
    :pswitch_2
    move v0, v5

    .line 281
    .restart local v0    # "type":I
    const/4 v4, 0x1

    .line 282
    const/4 v0, 0x0

    .line 283
    move v11, v4

    move v4, v0

    goto :goto_3

    .line 268
    .end local v0    # "type":I
    :cond_2
    move v0, v5

    .line 277
    .restart local v0    # "type":I
    const/4 v0, 0x2

    .line 278
    move v11, v4

    move v4, v0

    goto :goto_3

    .line 268
    .end local v0    # "type":I
    :cond_3
    :pswitch_3
    move v0, v5

    .line 286
    .restart local v0    # "type":I
    const/4 v0, 0x0

    .line 287
    move v11, v4

    move v4, v0

    .line 292
    .end local v0    # "type":I
    .local v4, "type":I
    .local v11, "isDevice":Z
    :goto_3
    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 294
    const/4 v0, 0x4

    .line 295
    .local v0, "g":I
    const/4 v14, 0x0

    move v15, v0

    .end local v0    # "g":I
    .local v14, "access":I
    .local v15, "g":I
    :goto_4
    const/4 v0, 0x3

    if-ge v14, v0, :cond_5

    .line 298
    invoke-virtual {v1, v15}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 300
    add-int/lit8 v0, v15, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v2, v14, v3, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 303
    add-int/lit8 v0, v15, 0x2

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "execPerm":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 306
    const/4 v3, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v14, v5, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_5

    .line 304
    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x2

    .line 310
    const/4 v3, 0x0

    invoke-virtual {v2, v14, v5, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 295
    .end local v0    # "execPerm":Ljava/lang/String;
    :goto_5
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x4

    move-object/from16 v3, p1

    const/4 v5, 0x0

    goto :goto_4

    .line 314
    .end local v14    # "access":I
    :cond_5
    if-nez v11, :cond_6

    .line 318
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    goto :goto_6

    .line 320
    :catch_1
    move-exception v0

    .line 326
    :cond_6
    :goto_6
    invoke-virtual {v2, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    .line 331
    :try_start_2
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 336
    goto :goto_7

    .line 333
    :catch_2
    move-exception v0

    .line 340
    :goto_7
    const/4 v1, 0x2

    if-ne v4, v1, :cond_8

    .line 343
    const-string v0, " -> "

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 347
    invoke-virtual {v2, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 351
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 352
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    .line 355
    .end local v0    # "end":I
    :goto_8
    goto :goto_9

    .line 358
    :cond_8
    invoke-virtual {v2, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 360
    :goto_9
    return-object v2

    .line 362
    .end local v6    # "typeStr":Ljava/lang/String;
    .end local v7    # "hardLinkCount":Ljava/lang/String;
    .end local v8    # "usr":Ljava/lang/String;
    .end local v9    # "grp":Ljava/lang/String;
    .end local v10    # "filesize":Ljava/lang/String;
    .end local v11    # "isDevice":Z
    .end local v12    # "datestr":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "g":I
    .local v4, "isDevice":Z
    :cond_9
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

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 209
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "entry":Ljava/lang/String;
    const-string v2, "^total \\d+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 214
    .end local v1    # "entry":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 215
    :cond_1
    return-object p1
.end method
