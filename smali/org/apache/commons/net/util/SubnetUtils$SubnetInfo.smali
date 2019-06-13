.class public final Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;
.super Ljava/lang/Object;
.source "SubnetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/SubnetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubnetInfo"
.end annotation


# static fields
.field private static final UNSIGNED_INT_MASK:J = 0xffffffffL


# instance fields
.field final synthetic this$0:Lorg/apache/commons/net/util/SubnetUtils;


# direct methods
.method private constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/net/util/SubnetUtils;Lorg/apache/commons/net/util/SubnetUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/net/util/SubnetUtils;
    .param p2, "x1"    # Lorg/apache/commons/net/util/SubnetUtils$1;

    .line 92
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;-><init>(Lorg/apache/commons/net/util/SubnetUtils;)V

    return-void
.end method

.method private address()I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$200(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private broadcast()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private broadcastLong()J
    .locals 4

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$300(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private high()I
    .locals 5

    .line 113
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private low()I
    .locals 5

    .line 108
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private netmask()I
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$000(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private network()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    return v0
.end method

.method private networkLong()J
    .locals 4

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0}, Lorg/apache/commons/net/util/SubnetUtils;->access$100(Lorg/apache/commons/net/util/SubnetUtils;)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public asInteger(Ljava/lang/String;)I
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->address()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressCount()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCountLong()J

    move-result-wide v0

    .line 187
    .local v0, "countLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 191
    long-to-int v2, v0

    return v2

    .line 188
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count is larger than an integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAddressCountLong()J
    .locals 9

    .line 201
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcastLong()J

    move-result-wide v0

    .line 202
    .local v0, "b":J
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->networkLong()J

    move-result-wide v2

    .line 203
    .local v2, "n":J
    sub-long v4, v0, v2

    iget-object v6, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-virtual {v6}, Lorg/apache/commons/net/util/SubnetUtils;->isInclusiveHostCount()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, -0x1

    :goto_0
    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 204
    .local v4, "count":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    return-wide v6
.end method

.method public getAllAddresses()[Ljava/lang/String;
    .locals 6

    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v0

    .line 220
    .local v0, "ct":I
    new-array v1, v0, [Ljava/lang/String;

    .line 221
    .local v1, "addresses":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 222
    return-object v1

    .line 224
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v2

    .local v2, "add":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v4

    if-gt v2, v4, :cond_1

    .line 225
    iget-object v4, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v4, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 224
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    .end local v2    # "add":I
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method public getBroadcastAddress()Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->broadcast()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidrSignature()Ljava/lang/String;
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->address()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->netmask()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/net/util/SubnetUtils;->access$700(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighAddress()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowAddress()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->netmask()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAddress()Ljava/lang/String;
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->network()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$500(Lorg/apache/commons/net/util/SubnetUtils;I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/SubnetUtils;->access$600(Lorg/apache/commons/net/util/SubnetUtils;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInRange(I)Z
    .locals 8
    .param p1, "address"    # I

    .line 135
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 136
    .local v0, "addLong":J
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->low()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 137
    .local v4, "lowLong":J
    invoke-direct {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->high()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    .line 138
    .local v2, "highLong":J
    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method public isInRange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->this$0:Lorg/apache/commons/net/util/SubnetUtils;

    invoke-static {v0, p1}, Lorg/apache/commons/net/util/SubnetUtils;->access$400(Lorg/apache/commons/net/util/SubnetUtils;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->isInRange(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "CIDR Signature:\t["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getCidrSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Netmask: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetmask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Network:\t["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getNetworkAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Broadcast:\t["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getBroadcastAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "First Address:\t["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getLowAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Last Address:\t["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getHighAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# Addresses:\t["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/util/SubnetUtils$SubnetInfo;->getAddressCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
