.class public Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "TerminalTypeOptionHandler.java"


# static fields
.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1


# instance fields
.field private final termType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "termtype"    # Ljava/lang/String;

    .line 76
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 77
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p1, "termtype"    # Ljava/lang/String;
    .param p2, "initlocal"    # Z
    .param p3, "initremote"    # Z
    .param p4, "acceptlocal"    # Z
    .param p5, "acceptremote"    # Z

    .line 63
    const/16 v1, 0x18

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 5
    .param p1, "suboptionData"    # [I
    .param p2, "suboptionLength"    # I

    .line 91
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    const/4 v2, 0x0

    aget v3, p1, v2

    const/16 v4, 0x18

    if-ne v3, v4, :cond_1

    aget v3, p1, v0

    if-ne v3, v0, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 99
    .local v1, "response":[I
    aput v4, v1, v2

    .line 100
    aput v2, v1, v0

    .line 102
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 104
    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lorg/apache/commons/net/telnet/TerminalTypeOptionHandler;->termType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v1, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "ii":I
    :cond_0
    return-object v1

    .line 110
    .end local v1    # "response":[I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
