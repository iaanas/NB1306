.class public Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;
.super Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.source "WindowSizeOptionHandler.java"


# static fields
.field protected static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private m_nHeight:I

.field private m_nWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I

    .line 86
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 35
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 94
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 95
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 96
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 6
    .param p1, "nWidth"    # I
    .param p2, "nHeight"    # I
    .param p3, "initlocal"    # Z
    .param p4, "initremote"    # Z
    .param p5, "acceptlocal"    # Z
    .param p6, "acceptremote"    # Z

    .line 63
    const/16 v1, 0x1f

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;-><init>(IZZZZ)V

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 35
    const/16 v0, 0x18

    iput v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 71
    iput p1, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    .line 72
    iput p2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    .line 73
    return-void
.end method


# virtual methods
.method public startSubnegotiationLocal()[I
    .locals 8

    .line 107
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    const/high16 v1, 0x10000

    mul-int v1, v1, v0

    iget v2, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    add-int/2addr v1, v2

    .line 108
    .local v1, "nCompoundWindowSize":I
    const/4 v2, 0x5

    .line 113
    .local v2, "nResponseSize":I
    rem-int/lit16 v0, v0, 0x100

    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 117
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nWidth:I

    div-int/lit16 v0, v0, 0x100

    if-ne v0, v3, :cond_1

    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 121
    :cond_1
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    rem-int/lit16 v0, v0, 0x100

    if-ne v0, v3, :cond_2

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 125
    :cond_2
    iget v0, p0, Lorg/apache/commons/net/telnet/WindowSizeOptionHandler;->m_nHeight:I

    div-int/lit16 v0, v0, 0x100

    if-ne v0, v3, :cond_3

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 132
    :cond_3
    new-array v0, v2, [I

    .line 142
    .local v0, "response":[I
    const/4 v4, 0x0

    const/16 v5, 0x1f

    aput v5, v0, v4

    .line 145
    const/4 v4, 0x1

    .local v4, "nIndex":I
    const/16 v5, 0x18

    .line 146
    .local v5, "nShift":I
    :goto_0
    if-ge v4, v2, :cond_5

    .line 149
    const/16 v6, 0xff

    .line 150
    .local v6, "nTurnedOnBits":I
    shl-int/2addr v6, v5

    .line 151
    and-int v7, v1, v6

    ushr-int/2addr v7, v5

    aput v7, v0, v4

    .line 153
    aget v7, v0, v4

    if-ne v7, v3, :cond_4

    .line 154
    add-int/lit8 v4, v4, 0x1

    .line 155
    aput v3, v0, v4

    .line 147
    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x8

    goto :goto_0

    .line 159
    .end local v6    # "nTurnedOnBits":I
    :cond_5
    return-object v0
.end method
