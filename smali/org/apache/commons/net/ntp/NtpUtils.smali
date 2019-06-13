.class public final Lorg/apache/commons/net/ntp/NtpUtils;
.super Ljava/lang/Object;
.source "NtpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostAddress(I)Ljava/lang/String;
    .locals 3
    .param p0, "address"    # I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v1, p0, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .line 94
    packed-switch p0, :pswitch_data_0

    .line 112
    const-string v0, "Unknown"

    return-object v0

    .line 110
    :pswitch_0
    const-string v0, "Private"

    return-object v0

    .line 108
    :pswitch_1
    const-string v0, "Control"

    return-object v0

    .line 106
    :pswitch_2
    const-string v0, "Broadcast"

    return-object v0

    .line 104
    :pswitch_3
    const-string v0, "Server"

    return-object v0

    .line 102
    :pswitch_4
    const-string v0, "Client"

    return-object v0

    .line 100
    :pswitch_5
    const-string v0, "Symmetric Passive"

    return-object v0

    .line 98
    :pswitch_6
    const-string v0, "Symmetric Active"

    return-object v0

    .line 96
    :pswitch_7
    const-string v0, "Reserved"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRefAddress(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .locals 2
    .param p0, "packet"    # Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 49
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v0

    .line 50
    .local v0, "address":I
    :goto_0
    invoke-static {v0}, Lorg/apache/commons/net/ntp/NtpUtils;->getHostAddress(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getReferenceClock(Lorg/apache/commons/net/ntp/NtpV3Packet;)Ljava/lang/String;
    .locals 6
    .param p0, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 63
    const-string v0, ""

    if-nez p0, :cond_0

    .line 64
    return-object v0

    .line 66
    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReferenceId()I

    move-result v1

    .line 67
    .local v1, "refId":I
    if-nez v1, :cond_1

    .line 68
    return-object v0

    .line 70
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v2, "buf":Ljava/lang/StringBuilder;
    const/16 v3, 0x18

    .local v3, "shiftBits":I
    :goto_0
    if-ltz v3, :cond_4

    .line 74
    ushr-int v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 75
    .local v4, "c":C
    if-nez v4, :cond_2

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 79
    return-object v0

    .line 81
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .end local v4    # "c":C
    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 83
    .end local v3    # "shiftBits":I
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
