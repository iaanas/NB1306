.class public abstract Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.super Ljava/lang/Object;
.source "TelnetOptionHandler.java"


# instance fields
.field private acceptLocal:Z

.field private acceptRemote:Z

.field private doFlag:Z

.field private initialLocal:Z

.field private initialRemote:Z

.field private optionCode:I

.field private willFlag:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 1
    .param p1, "optcode"    # I
    .param p2, "initlocal"    # Z
    .param p3, "initremote"    # Z
    .param p4, "acceptlocal"    # Z
    .param p5, "acceptremote"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 58
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    .line 83
    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    .line 84
    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 85
    iput-boolean p3, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 86
    iput-boolean p4, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 87
    iput-boolean p5, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 88
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 1
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAcceptLocal()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return v0
.end method

.method public getAcceptRemote()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return v0
.end method

.method getDo()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return v0
.end method

.method public getInitLocal()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return v0
.end method

.method public getInitRemote()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return v0
.end method

.method public getOptionCode()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    return v0
.end method

.method getWill()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return v0
.end method

.method public setAcceptLocal(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .line 131
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    .line 132
    return-void
.end method

.method public setAcceptRemote(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .line 142
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    .line 143
    return-void
.end method

.method setDo(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 281
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    .line 282
    return-void
.end method

.method public setInitLocal(Z)V
    .locals 0
    .param p1, "init"    # Z

    .line 175
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    .line 176
    return-void
.end method

.method public setInitRemote(Z)V
    .locals 0
    .param p1, "init"    # Z

    .line 186
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    .line 187
    return-void
.end method

.method setWill(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 258
    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    .line 259
    return-void
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    .line 236
    const/4 v0, 0x0

    return-object v0
.end method
