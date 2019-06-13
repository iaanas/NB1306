.class public Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "CompositeFileEntryParser.java"


# instance fields
.field private cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1
    .param p1, "ftpFileEntryParsers"    # [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 41
    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 42
    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5
    .param p1, "listEntry"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    .line 50
    .local v0, "matched":Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v0, :cond_0

    .line 52
    return-object v0

    .line 54
    .end local v0    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_0
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .local v0, "arr$":[Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 59
    .local v3, "ftpFileEntryParser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    invoke-interface {v3, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v4

    .line 60
    .local v4, "matched":Lorg/apache/commons/net/ftp/FTPFile;
    if-eqz v4, :cond_2

    .line 62
    iput-object v3, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    .line 63
    return-object v4

    .line 57
    .end local v3    # "ftpFileEntryParser":Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local v4    # "matched":Lorg/apache/commons/net/ftp/FTPFile;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "arr$":[Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
