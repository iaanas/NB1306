.class public Lorg/apache/commons/net/ntp/TimeStamp;
.super Ljava/lang/Object;
.source "TimeStamp.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/net/ntp/TimeStamp;",
        ">;"
    }
.end annotation


# static fields
.field public static final NTP_DATE_FORMAT:Ljava/lang/String; = "EEE, MMM dd yyyy HH:mm:ss.SSS"

.field protected static final msb0baseTime:J = 0x1e5ae01dc00L

.field protected static final msb1baseTime:J = -0x20251fe2400L

.field private static final serialVersionUID:J = 0x70f667418312e431L


# instance fields
.field private final ntpTime:J

.field private simpleFormatter:Ljava/text/DateFormat;

.field private utcFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "ntpTime"    # J

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hexStamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lorg/apache/commons/net/ntp/TimeStamp;->decodeNtpHexString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "d"    # Ljava/util/Date;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toNtpTime(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 120
    return-void
.end method

.method private static appendHexString(Ljava/lang/StringBuilder;J)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "l"    # J

    .line 367
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 369
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    return-void
.end method

.method protected static decodeNtpHexString(Ljava/lang/String;)J
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 251
    if-eqz p0, :cond_2

    .line 254
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 255
    .local v0, "ind":I
    const/4 v1, -0x1

    const/16 v2, 0x20

    const/16 v3, 0x10

    if-ne v0, v1, :cond_1

    .line 256
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 257
    const-wide/16 v1, 0x0

    return-wide v1

    .line 259
    :cond_0
    invoke-static {p0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    shl-long v1, v3, v2

    return-wide v1

    .line 262
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    shl-long v1, v4, v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    or-long/2addr v1, v3

    return-wide v1

    .line 252
    .end local v0    # "ind":I
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentTime()Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 2

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getNtpTime(J)Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v0

    return-object v0
.end method

.method public static getNtpTime(J)Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 3
    .param p0, "date"    # J

    .line 225
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-static {p0, p1}, Lorg/apache/commons/net/ntp/TimeStamp;->toNtpTime(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method public static getTime(J)J
    .locals 11
    .param p0, "ntpTimeValue"    # J

    .line 188
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 189
    .local v0, "seconds":J
    and-long/2addr v2, p0

    .line 192
    .local v2, "fraction":J
    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    const-wide/high16 v6, 0x41f0000000000000L    # 4.294967296E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 203
    const-wide v4, 0x80000000L

    and-long/2addr v4, v0

    .line 204
    .local v4, "msb":J
    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-nez v10, :cond_0

    .line 206
    const-wide v8, 0x1e5ae01dc00L

    mul-long v6, v6, v0

    add-long/2addr v6, v8

    add-long/2addr v6, v2

    return-wide v6

    .line 209
    :cond_0
    const-wide v8, -0x20251fe2400L

    mul-long v6, v6, v0

    add-long/2addr v6, v8

    add-long/2addr v6, v2

    return-wide v6
.end method

.method public static parseNtpString(Ljava/lang/String;)Lorg/apache/commons/net/ntp/TimeStamp;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 277
    new-instance v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-static {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->decodeNtpHexString(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;-><init>(J)V

    return-object v0
.end method

.method protected static toNtpTime(J)J
    .locals 11
    .param p0, "t"    # J

    .line 288
    const-wide v0, 0x1e5ae01dc00L

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 290
    .local v2, "useBase1":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 291
    const-wide v0, -0x20251fe2400L

    sub-long v0, p0, v0

    .local v0, "baseTime":J
    goto :goto_1

    .line 294
    .end local v0    # "baseTime":J
    :cond_1
    sub-long v0, p0, v0

    .line 297
    .restart local v0    # "baseTime":J
    :goto_1
    const-wide/16 v3, 0x3e8

    div-long v5, v0, v3

    .line 298
    .local v5, "seconds":J
    rem-long v7, v0, v3

    const-wide v9, 0x100000000L

    mul-long v7, v7, v9

    div-long/2addr v7, v3

    .line 300
    .local v7, "fraction":J
    if-eqz v2, :cond_2

    .line 301
    const-wide v3, 0x80000000L

    or-long/2addr v5, v3

    .line 304
    :cond_2
    const/16 v3, 0x20

    shl-long v3, v5, v3

    or-long/2addr v3, v7

    .line 305
    .local v3, "time":J
    return-wide v3
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 5
    .param p0, "ntpTime"    # J

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;->appendHexString(Ljava/lang/StringBuilder;J)V

    .line 391
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    and-long v1, p0, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/ntp/TimeStamp;->appendHexString(Ljava/lang/StringBuilder;J)V

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ntp/TimeStamp;->compareTo(Lorg/apache/commons/net/ntp/TimeStamp;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/net/ntp/TimeStamp;)I
    .locals 5
    .param p1, "anotherTimeStamp"    # Lorg/apache/commons/net/ntp/TimeStamp;

    .line 450
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 451
    .local v0, "thisVal":J
    iget-wide v2, p1, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    .line 452
    .local v2, "anotherVal":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 338
    instance-of v0, p1, Lorg/apache/commons/net/ntp/TimeStamp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 339
    iget-wide v2, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    move-object v0, p1

    check-cast v0, Lorg/apache/commons/net/ntp/TimeStamp;

    invoke-virtual {v0}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 341
    :cond_1
    return v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    .line 169
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime(J)J

    move-result-wide v0

    .line 170
    .local v0, "time":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public getFraction()J
    .locals 4

    .line 149
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getSeconds()J
    .locals 4

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 322
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public ntpValue()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    return-wide v0
.end method

.method public toDateString()Ljava/lang/String;
    .locals 3

    .line 408
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, MMM dd yyyy HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    .line 410
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 412
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 413
    .local v0, "ntpDate":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->simpleFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 356
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->ntpTime:J

    invoke-static {v0, v1}, Lorg/apache/commons/net/ntp/TimeStamp;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUTCString()Ljava/lang/String;
    .locals 3

    .line 427
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, MMM dd yyyy HH:mm:ss.SSS \'UTC\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    .line 430
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeStamp;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 433
    .local v0, "ntpDate":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/commons/net/ntp/TimeStamp;->utcFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
