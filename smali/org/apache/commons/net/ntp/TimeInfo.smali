.class public Lorg/apache/commons/net/ntp/TimeInfo;
.super Ljava/lang/Object;
.source "TimeInfo.java"


# instance fields
.field private _comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _delay:Ljava/lang/Long;

.field private _detailsComputed:Z

.field private final _message:Lorg/apache/commons/net/ntp/NtpV3Packet;

.field private _offset:Ljava/lang/Long;

.field private final _returnTime:J


# direct methods
.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;J)V
    .locals 6
    .param p1, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J

    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;)V
    .locals 6
    .param p1, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p4, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V
    .locals 2
    .param p1, "message"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J
    .param p5, "doComputeDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ntp/NtpV3Packet;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 102
    .local p4, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-eqz p1, :cond_1

    .line 106
    iput-wide p2, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    .line 107
    iput-object p1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    .line 108
    iput-object p4, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 109
    if-eqz p5, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/net/ntp/TimeInfo;->computeDetails()V

    .line 112
    :cond_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JZ)V
    .locals 6
    .param p1, "msgPacket"    # Lorg/apache/commons/net/ntp/NtpV3Packet;
    .param p2, "returnTime"    # J
    .param p4, "doComputeDetails"    # Z

    .line 85
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/ntp/TimeInfo;-><init>(Lorg/apache/commons/net/ntp/NtpV3Packet;JLjava/util/List;Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public computeDetails()V
    .locals 22

    .line 135
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    if-eqz v1, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_detailsComputed:Z

    .line 139
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    .line 143
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v1}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getOriginateTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v1

    .line 144
    .local v1, "origNtpTime":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v2

    .line 147
    .local v2, "origTime":J
    iget-object v4, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v4}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getReceiveTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v4

    .line 148
    .local v4, "rcvNtpTime":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v5

    .line 151
    .local v5, "rcvTime":J
    iget-object v7, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v7}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getTransmitTimeStamp()Lorg/apache/commons/net/ntp/TimeStamp;

    move-result-object v7

    .line 152
    .local v7, "xmitNtpTime":Lorg/apache/commons/net/ntp/TimeStamp;
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->getTime()J

    move-result-wide v8

    .line 170
    .local v8, "xmitTime":J
    invoke-virtual {v1}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_3

    .line 174
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_2

    .line 176
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    .line 177
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Error: zero orig time -- cannot compute delay"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 179
    :cond_2
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Error: zero orig time -- cannot compute delay/offset"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 181
    :cond_3
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    const-string v14, "Error: OrigTime > DestRcvTime"

    cmp-long v15, v10, v12

    if-eqz v15, :cond_a

    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v15, v10, v12

    if-nez v15, :cond_4

    goto :goto_1

    .line 206
    :cond_4
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long/2addr v10, v2

    .line 208
    .local v10, "delayValue":J
    cmp-long v15, v8, v5

    if-gez v15, :cond_5

    .line 211
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Error: xmitTime < rcvTime"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_5
    sub-long v15, v8, v5

    .line 218
    .local v15, "delta":J
    cmp-long v17, v15, v10

    if-gtz v17, :cond_6

    .line 220
    sub-long/2addr v10, v15

    goto :goto_0

    .line 225
    :cond_6
    sub-long v17, v15, v10

    const-wide/16 v19, 0x1

    cmp-long v21, v17, v19

    if-nez v21, :cond_7

    .line 228
    cmp-long v17, v10, v12

    if-eqz v17, :cond_8

    .line 230
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Info: processing time > total network time by 1 ms -> assume zero delay"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 234
    :cond_7
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v13, "Warning: processing time > total network time"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v15    # "delta":J
    :cond_8
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    .line 239
    iget-wide v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v15, v2, v12

    if-lez v15, :cond_9

    .line 240
    iget-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_9
    sub-long v12, v5, v2

    iget-wide v14, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v14, v8, v14

    add-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto :goto_3

    .line 182
    .end local v10    # "delayValue":J
    :cond_a
    :goto_1
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    const-string v11, "Warning: zero rcvNtpTime or xmitNtpTime"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v15, v2, v10

    if-lez v15, :cond_b

    .line 185
    iget-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 189
    :cond_b
    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    .line 195
    :goto_2
    invoke-virtual {v4}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_c

    .line 198
    sub-long v10, v5, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    goto :goto_3

    .line 199
    :cond_c
    invoke-virtual {v7}, Lorg/apache/commons/net/ntp/TimeStamp;->ntpValue()J

    move-result-wide v10

    cmp-long v14, v10, v12

    if-eqz v14, :cond_d

    .line 202
    iget-wide v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    sub-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    .line 245
    :cond_d
    :goto_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 322
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 323
    return v0

    .line 325
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 328
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/net/ntp/TimeInfo;

    .line 329
    .local v2, "other":Lorg/apache/commons/net/ntp/TimeInfo;
    iget-wide v3, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    iget-wide v5, v2, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v3, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    iget-object v4, v2, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 326
    .end local v2    # "other":Lorg/apache/commons/net/ntp/TimeInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-interface {v0}, Lorg/apache/commons/net/ntp/NtpV3Packet;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 295
    .local v0, "pkt":Ljava/net/DatagramPacket;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_comments:Ljava/util/List;

    return-object v0
.end method

.method public getDelay()Ljava/lang/Long;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_delay:Ljava/lang/Long;

    return-object v0
.end method

.method public getMessage()Lorg/apache/commons/net/ntp/NtpV3Packet;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    return-object v0
.end method

.method public getOffset()Ljava/lang/Long;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_offset:Ljava/lang/Long;

    return-object v0
.end method

.method public getReturnTime()J
    .locals 2

    .line 305
    iget-wide v0, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 342
    const/16 v0, 0x1f

    .line 343
    .local v0, "prime":I
    iget-wide v1, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_returnTime:J

    long-to-int v2, v1

    .line 344
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/apache/commons/net/ntp/TimeInfo;->_message:Lorg/apache/commons/net/ntp/NtpV3Packet;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 345
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method
