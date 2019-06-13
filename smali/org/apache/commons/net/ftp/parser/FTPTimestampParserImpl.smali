.class public Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;
.super Ljava/lang/Object;
.source "FTPTimestampParserImpl.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;
.implements Lorg/apache/commons/net/ftp/Configurable;


# static fields
.field private static final CALENDAR_UNITS:[I


# instance fields
.field private defaultDateFormat:Ljava/text/SimpleDateFormat;

.field private defaultDateSmallestUnitIndex:I

.field private lenientFutureDates:Z

.field private recentDateFormat:Ljava/text/SimpleDateFormat;

.field private recentDateSmallestUnitIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xe
        0xd
        0xc
        0xb
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 146
    const/4 v0, 0x0

    const-string v1, "MMM d yyyy"

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setDefaultDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 147
    const-string v1, "MMM d HH:mm"

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setRecentDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 148
    return-void
.end method

.method private static getEntry(Ljava/text/SimpleDateFormat;)I
    .locals 9
    .param p0, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .line 83
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 84
    return v0

    .line 86
    :cond_0
    const-string v1, "SsmHdM"

    .line 87
    .local v1, "FORMAT_CHARS":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "pattern":Ljava/lang/String;
    const-string v3, "SsmHdM"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .local v3, "arr$":[C
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v4, :cond_8

    aget-char v6, v3, v5

    .line 89
    .local v6, "ch":C
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 90
    const/16 v7, 0x48

    if-eq v6, v7, :cond_6

    const/16 v7, 0x4d

    if-eq v6, v7, :cond_5

    const/16 v7, 0x53

    if-eq v6, v7, :cond_4

    const/16 v7, 0x64

    if-eq v6, v7, :cond_3

    const/16 v7, 0x6d

    if-eq v6, v7, :cond_2

    const/16 v7, 0x73

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    return v0

    .line 96
    :cond_2
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    return v0

    .line 100
    :cond_3
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    return v0

    .line 92
    :cond_4
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    return v0

    .line 102
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    return v0

    .line 98
    :cond_6
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->indexOf(I)I

    move-result v0

    return v0

    .line 88
    .end local v6    # "ch":C
    :cond_7
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "arr$":[C
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_8
    return v0
.end method

.method private static indexOf(I)I
    .locals 3
    .param p0, "calendarUnit"    # I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 115
    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 116
    return v0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private setDefaultDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "dfs"    # Ljava/text/DateFormatSymbols;

    .line 269
    if-eqz p1, :cond_1

    .line 270
    if-eqz p2, :cond_0

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    .line 275
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    goto :goto_1

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    .line 279
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getEntry(Ljava/text/SimpleDateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateSmallestUnitIndex:I

    .line 280
    return-void
.end method

.method private static setPrecision(ILjava/util/Calendar;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "working"    # Ljava/util/Calendar;

    .line 128
    if-gtz p0, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    sget-object v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->CALENDAR_UNITS:[I

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    .line 134
    .local v0, "field":I
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 135
    .local v1, "value":I
    if-eqz v1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->clear(I)V

    .line 140
    :goto_0
    return-void
.end method

.method private setRecentDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "dfs"    # Ljava/text/DateFormatSymbols;

    .line 298
    if-eqz p1, :cond_1

    .line 299
    if-eqz p2, :cond_0

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    .line 304
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    goto :goto_1

    .line 306
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    .line 308
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getEntry(Ljava/text/SimpleDateFormat;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateSmallestUnitIndex:I

    .line 309
    return-void
.end method

.method private setServerTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverTimeZoneId"    # Ljava/lang/String;

    .line 333
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 334
    .local v0, "serverTimeZone":Ljava/util/TimeZone;
    if-eqz p1, :cond_0

    .line 335
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 337
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 338
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    .line 339
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 341
    :cond_1
    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 7
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "languageCode":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getShortMonthNames()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "shortmonths":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 373
    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    if-eqz v1, :cond_1

    .line 375
    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    const-string v3, "en"

    invoke-static {v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;->lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 381
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "recentFormatString":Ljava/lang/String;
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setRecentDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 384
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "defaultFormatString":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 388
    invoke-direct {p0, v4, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setDefaultDateFormat(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 390
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setServerTimeZone(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->isLenientFutureDates()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 393
    return-void

    .line 386
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "defaultFormatString cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getDefaultDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getDefaultDateFormatString()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecentDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public getRecentDateFormatString()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isLenientFutureDates()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    return v0
.end method

.method public parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2
    .param p1, "timestampStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .local v0, "now":Ljava/util/Calendar;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method public parseTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 11
    .param p1, "timestampStr"    # Ljava/lang/String;
    .param p2, "serverTime"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 190
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 191
    .local v0, "working":Ljava/util/Calendar;
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getServerTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "parsed":Ljava/util/Date;
    iget-object v2, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 197
    .local v2, "now":Ljava/util/Calendar;
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->getServerTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    iget-boolean v4, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 201
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 212
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "year":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "timeStampStrPlusYear":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " yyyy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9}, Ljava/text/SimpleDateFormat;->getDateFormatSymbols()Ljava/text/DateFormatSymbols;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    .line 216
    .local v7, "hackFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 217
    iget-object v8, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 218
    new-instance v8, Ljava/text/ParsePosition;

    invoke-direct {v8, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 219
    .local v8, "pp":Ljava/text/ParsePosition;
    invoke-virtual {v7, v6, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_2

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 223
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 226
    :cond_1
    iget v3, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->recentDateSmallestUnitIndex:I

    invoke-static {v3, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setPrecision(ILjava/util/Calendar;)V

    .line 227
    return-object v0

    .line 231
    .end local v2    # "now":Ljava/util/Calendar;
    .end local v4    # "year":Ljava/lang/String;
    .end local v6    # "timeStampStrPlusYear":Ljava/lang/String;
    .end local v7    # "hackFormatter":Ljava/text/SimpleDateFormat;
    .end local v8    # "pp":Ljava/text/ParsePosition;
    :cond_2
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 232
    .local v2, "pp":Ljava/text/ParsePosition;
    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 248
    iget v3, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->defaultDateSmallestUnitIndex:I

    invoke-static {v3, v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->setPrecision(ILjava/util/Calendar;)V

    .line 249
    return-object v0

    .line 243
    :cond_3
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timestamp \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' could not be parsed using a server time of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method setLenientFutureDates(Z)V
    .locals 0
    .param p1, "lenientFutureDates"    # Z

    .line 404
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->lenientFutureDates:Z

    .line 405
    return-void
.end method
