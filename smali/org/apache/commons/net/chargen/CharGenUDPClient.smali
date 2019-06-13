.class public final Lorg/apache/commons/net/chargen/CharGenUDPClient;
.super Lorg/apache/commons/net/DatagramSocketClient;
.source "CharGenUDPClient.java"


# static fields
.field public static final CHARGEN_PORT:I = 0x13

.field public static final DEFAULT_PORT:I = 0x13

.field public static final NETSTAT_PORT:I = 0xf

.field public static final QUOTE_OF_DAY_PORT:I = 0x11

.field public static final SYSTAT_PORT:I = 0xb


# instance fields
.field private final __receiveData:[B

.field private final __receivePacket:Ljava/net/DatagramPacket;

.field private final __sendPacket:Ljava/net/DatagramPacket;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/net/DatagramSocketClient;-><init>()V

    .line 77
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__receiveData:[B

    .line 78
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__receiveData:[B

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    .line 79
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__sendPacket:Ljava/net/DatagramPacket;

    .line 80
    return-void
.end method


# virtual methods
.method public receive()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 123
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__receivePacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    move v1, v0

    .local v1, "length":I
    new-array v0, v0, [B

    .line 124
    .local v0, "result":[B
    iget-object v2, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__receiveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v0
.end method

.method public send(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/16 v0, 0x13

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/chargen/CharGenUDPClient;->send(Ljava/net/InetAddress;I)V

    .line 106
    return-void
.end method

.method public send(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 95
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, p2}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 96
    iget-object v0, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->_socket_:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lorg/apache/commons/net/chargen/CharGenUDPClient;->__sendPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 97
    return-void
.end method
