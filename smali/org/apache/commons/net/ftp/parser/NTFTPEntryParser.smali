.class public Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "NTFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MM-dd-yy hh:mma"

.field private static final DEFAULT_DATE_FORMAT2:Ljava/lang/String; = "MM-dd-yy kk:mm"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"


# instance fields
.field private final timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 4
    .param p1, "config"    # Lorg/apache/commons/net/ftp/FTPClientConfig;

    .line 78
    const-string v0, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 80
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "MM-dd-yy kk:mm"

    const-string v2, "WINDOWS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, "config2":Lorg/apache/commons/net/ftp/FTPClientConfig;
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setDefaultDateFormatStr(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    .line 86
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v1, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v1, v0}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 161
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "WINDOWS"

    const-string v2, "MM-dd-yy hh:mma"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 9
    .param p1, "entry"    # Ljava/lang/String;

    .line 102
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 103
    .local v0, "f":Lorg/apache/commons/net/ftp/FTPFile;
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "datestr":Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "dirString":Ljava/lang/String;
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "size":Ljava/lang/String;
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 115
    :catch_0
    move-exception v7

    .line 120
    .local v7, "e":Ljava/text/ParseException;
    :try_start_1
    iget-object v8, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    invoke-interface {v8, v1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_0

    .line 122
    :catch_1
    move-exception v8

    .line 128
    .end local v7    # "e":Ljava/text/ParseException;
    :goto_0
    if-eqz v6, :cond_3

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 135
    const-string v2, "<DIR>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 138
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .line 142
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 143
    if-eqz v5, :cond_2

    .line 145
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    .line 148
    :cond_2
    :goto_1
    return-object v0

    .line 130
    :cond_3
    :goto_2
    return-object v2

    .line 150
    .end local v1    # "datestr":Ljava/lang/String;
    .end local v4    # "dirString":Ljava/lang/String;
    .end local v5    # "size":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_4
    return-object v2
.end method
