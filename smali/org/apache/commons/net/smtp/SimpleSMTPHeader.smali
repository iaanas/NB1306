.class public Lorg/apache/commons/net/smtp/SimpleSMTPHeader;
.super Ljava/lang/Object;
.source "SimpleSMTPHeader.java"


# instance fields
.field private __cc:Ljava/lang/StringBuffer;

.field private final __from:Ljava/lang/String;

.field private final __headerFields:Ljava/lang/StringBuffer;

.field private final __subject:Ljava/lang/String;

.field private final __to:Ljava/lang/String;

.field private hasHeaderDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    .line 80
    iput-object p2, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__from:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    .line 85
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "From cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addCC(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 121
    :cond_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    return-void
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "headerField"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 101
    iget-boolean v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->hasHeaderDate:Z

    if-nez v0, :cond_0

    const-string v0, "Date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->hasHeaderDate:Z

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v0, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "header":Ljava/lang/StringBuilder;
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    .line 142
    .local v1, "pattern":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 144
    .local v2, "format":Ljava/text/SimpleDateFormat;
    iget-boolean v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->hasHeaderDate:Z

    if-nez v3, :cond_0

    .line 145
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Date"

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->addHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 148
    iget-object v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__headerFields:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_1
    const-string v3, "From: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__from:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 154
    const-string v4, "To: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__to:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_3

    .line 159
    const-string v4, "Cc: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__cc:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 164
    const-string v4, "Subject: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/net/smtp/SimpleSMTPHeader;->__subject:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_4
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
