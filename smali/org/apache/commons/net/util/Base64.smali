.class public Lorg/apache/commons/net/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field private static final DECODE_TABLE:[B

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final MASK_6BITS:I = 0x3f

.field private static final MASK_8BITS:I = 0xff

.field private static final PAD:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B


# instance fields
.field private buffer:[B

.field private currentLinePos:I

.field private final decodeSize:I

.field private final encodeSize:I

.field private final encodeTable:[B

.field private eof:Z

.field private final lineLength:I

.field private final lineSeparator:[B

.field private modulus:I

.field private pos:I

.field private readPos:I

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/net/util/Base64;->EMPTY_BYTE_ARRAY:[B

    .line 82
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 95
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    .line 119
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    .line 220
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .line 260
    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[B)V

    .line 261
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    .line 287
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 4
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    if-nez p2, :cond_0

    .line 316
    const/4 p1, 0x0

    .line 317
    sget-object p2, Lorg/apache/commons/net/util/Base64;->EMPTY_BYTE_ARRAY:[B

    .line 319
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-lez p1, :cond_1

    div-int/lit8 v2, p1, 0x4

    mul-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    .line 320
    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    .line 321
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    if-lez p1, :cond_2

    .line 323
    array-length v0, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    goto :goto_1

    .line 325
    :cond_2
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    .line 327
    :goto_1
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    .line 328
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->containsBase64Byte([B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 332
    if-eqz p3, :cond_3

    sget-object v0, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    .line 333
    return-void

    .line 329
    :cond_4
    invoke-static {p2}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeperator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .line 238
    sget-object v0, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    const/16 v1, 0x4c

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    .line 239
    return-void
.end method

.method private static containsBase64Byte([B)Z
    .locals 5
    .param p0, "arrayOctet"    # [B

    .line 624
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    .line 626
    .local v3, "element":B
    invoke-static {v3}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    const/4 v4, 0x1

    return v4

    .line 624
    .end local v3    # "element":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "arr$":[B
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64String"    # Ljava/lang/String;

    .line 846
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeBase64([B)[B
    .locals 1
    .param p0, "base64Data"    # [B

    .line 857
    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0}, Lorg/apache/commons/net/util/Base64;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeInteger([B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "pArray"    # [B

    .line 974
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->decodeBase64([B)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .line 641
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .line 783
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .line 801
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .line 821
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 825
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x4c

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sget-object v2, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/commons/net/util/Base64;->EMPTY_BYTE_ARRAY:[B

    :goto_1
    invoke-static {p0, v1, v2}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v1

    .line 826
    .local v1, "len":J
    int-to-long v3, p3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    .line 833
    if-eqz p1, :cond_3

    new-instance v0, Lorg/apache/commons/net/util/Base64;

    invoke-direct {v0, p2}, Lorg/apache/commons/net/util/Base64;-><init>(Z)V

    goto :goto_2

    :cond_3
    new-instance v3, Lorg/apache/commons/net/util/Base64;

    sget-object v4, Lorg/apache/commons/net/util/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v3, v0, v4, p2}, Lorg/apache/commons/net/util/Base64;-><init>(I[BZ)V

    move-object v0, v3

    .line 834
    .local v0, "b64":Lorg/apache/commons/net/util/Base64;
    :goto_2
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v3

    return-object v3

    .line 827
    .end local v0    # "b64":Lorg/apache/commons/net/util/Base64;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") than the specified maxium size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    .end local v1    # "len":J
    :cond_5
    :goto_3
    return-object p0
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .line 719
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .line 655
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64String([BZ)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "useChunking"    # Z

    .line 682
    invoke-static {p0, p1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64StringUnChunked([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .line 669
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafe([B)[B
    .locals 2
    .param p0, "binaryData"    # [B

    .line 695
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .line 708
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeInteger(Ljava/math/BigInteger;)[B
    .locals 2
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .line 988
    if-eqz p0, :cond_0

    .line 991
    invoke-static {p0}, Lorg/apache/commons/net/util/Base64;->toIntegerBytes(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/net/util/Base64;->encodeBase64([BZ)[B

    move-result-object v0

    return-object v0

    .line 989
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBytesUtf8(Ljava/lang/String;)[B
    .locals 2
    .param p1, "pArray"    # Ljava/lang/String;

    .line 736
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getEncodeLength([BI[B)J
    .locals 9
    .param p0, "pArray"    # [B
    .param p1, "chunkSize"    # I
    .param p2, "chunkSeparator"    # [B

    .line 947
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x4

    .line 949
    .end local p1    # "chunkSize":I
    .local v0, "chunkSize":I
    array-length p1, p0

    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    int-to-long v1, p1

    .line 950
    .local v1, "len":J
    const-wide/16 v3, 0x4

    rem-long v5, v1, v3

    .line 951
    .local v5, "mod":J
    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_0

    .line 952
    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 954
    :cond_0
    if-lez v0, :cond_2

    .line 955
    int-to-long v3, v0

    rem-long v3, v1, v3

    cmp-long p1, v3, v7

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 956
    .local p1, "lenChunksPerfectly":Z
    :goto_0
    int-to-long v3, v0

    div-long v3, v1, v3

    array-length v7, p2

    int-to-long v7, v7

    mul-long v3, v3, v7

    add-long/2addr v1, v3

    .line 957
    if-nez p1, :cond_2

    .line 958
    array-length v3, p2

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 961
    .end local p1    # "lenChunksPerfectly":Z
    :cond_2
    return-wide v1
.end method

.method public static isArrayByteBase64([B)Z
    .locals 2
    .param p0, "arrayOctet"    # [B

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 609
    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->isBase64(B)Z

    move-result v1

    if-nez v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Lorg/apache/commons/net/util/Base64;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    const/4 v1, 0x0

    return v1

    .line 608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isBase64(B)Z
    .locals 2
    .param p0, "octet"    # B

    .line 595
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .line 870
    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    .line 877
    const/4 v0, 0x0

    return v0

    .line 875
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 3
    .param p0, "encode"    # [B

    .line 894
    const/4 v0, 0x0

    .line 896
    .local v0, "str":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 899
    nop

    .line 900
    return-object v0

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, "ue":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private reset()V
    .locals 1

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 1031
    iput v0, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 1032
    iput v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    .line 1033
    iput v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    .line 1034
    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 1035
    return-void
.end method

.method private resizeBuffer()V
    .locals 4

    .line 365
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 366
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 367
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 368
    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    goto :goto_0

    .line 370
    :cond_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 371
    .local v2, "b":[B
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iput-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 374
    .end local v2    # "b":[B
    :goto_0
    return-void
.end method

.method static toIntegerBytes(Ljava/math/BigInteger;)[B
    .locals 6
    .param p0, "bigInt"    # Ljava/math/BigInteger;

    .line 1002
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 1004
    .local v0, "bitlen":I
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v0, v1, 0x3

    .line 1005
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1007
    .local v1, "bigBytes":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v3, v0, 0x8

    if-ne v2, v3, :cond_0

    .line 1008
    return-object v1

    .line 1011
    :cond_0
    const/4 v2, 0x0

    .line 1012
    .local v2, "startSrc":I
    array-length v3, v1

    .line 1015
    .local v3, "len":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 1016
    const/4 v2, 0x1

    .line 1017
    add-int/lit8 v3, v3, -0x1

    .line 1019
    :cond_1
    div-int/lit8 v4, v0, 0x8

    sub-int/2addr v4, v3

    .line 1020
    .local v4, "startDst":I
    div-int/lit8 v5, v0, 0x8

    new-array v5, v5, [B

    .line 1021
    .local v5, "resizedBytes":[B
    invoke-static {v1, v2, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    return-object v5
.end method


# virtual methods
.method avail()I
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method decode([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .line 535
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x1

    if-gez p3, :cond_1

    .line 539
    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 541
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_6

    .line 542
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v2, :cond_2

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->decodeSize:I

    if-ge v2, v3, :cond_3

    .line 543
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    .line 545
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    aget-byte p2, p1, p2

    .line 546
    .local p2, "b":B
    const/16 v3, 0x3d

    if-ne p2, v3, :cond_4

    .line 548
    iput-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 549
    move p2, v2

    goto :goto_1

    .line 551
    :cond_4
    if-ltz p2, :cond_5

    sget-object v3, Lorg/apache/commons/net/util/Base64;->DECODE_TABLE:[B

    array-length v4, v3

    if-ge p2, v4, :cond_5

    .line 552
    aget-byte v3, v3, p2

    .line 553
    .local v3, "result":I
    if-ltz v3, :cond_5

    .line 554
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    .line 555
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 556
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v4, :cond_5

    .line 557
    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 558
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 559
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 541
    .end local v3    # "result":I
    .end local p2    # "b":B
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    .end local v2    # "inPos":I
    .local p2, "inPos":I
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-eqz v0, :cond_9

    .line 570
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v1, v1, 0x6

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 571
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto :goto_2

    .line 577
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 578
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 579
    goto :goto_2

    .line 573
    :cond_8
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 574
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 584
    :cond_9
    :goto_2
    return-void
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;

    .line 731
    invoke-direct {p0, p1}, Lorg/apache/commons/net/util/Base64;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/util/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 6
    .param p1, "pArray"    # [B

    .line 750
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    .line 751
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    .line 755
    .local v0, "len":J
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 756
    .local v2, "buf":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    .line 757
    array-length v3, p1

    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    .line 758
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/commons/net/util/Base64;->decode([BII)V

    .line 766
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    new-array v3, v3, [B

    .line 767
    .local v3, "result":[B
    array-length v5, v3

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    .line 768
    return-object v3

    .line 752
    .end local v0    # "len":J
    .end local v2    # "buf":[B
    .end local v3    # "result":[B
    :cond_1
    :goto_0
    return-object p1
.end method

.method encode([BII)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    .line 447
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_0

    .line 448
    return-void

    .line 452
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_6

    .line 453
    iput-boolean v1, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    .line 454
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v2, :cond_1

    array-length v2, v2

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v2, v3, :cond_2

    .line 455
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    .line 457
    :cond_2
    iget v2, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    const/16 v3, 0x3d

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    goto :goto_0

    .line 469
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v7, v6, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v2, v4

    .line 470
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v2, v4

    .line 471
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shl-int/lit8 v1, v6, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v5, v1

    aput-byte v1, v2, v4

    .line 473
    sget-object v1, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v1, :cond_5

    .line 474
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v3, v2, v1

    goto :goto_0

    .line 459
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v6, v5, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v4, v6

    aput-byte v6, v1, v2

    .line 460
    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v4, v5

    aput-byte v5, v1, v2

    .line 462
    sget-object v2, Lorg/apache/commons/net/util/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v4, v2, :cond_5

    .line 463
    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v3, v1, v2

    .line 464
    iget v2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    aput-byte v3, v1, v2

    .line 480
    :cond_5
    :goto_0
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v1, :cond_b

    iget v1, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lez v1, :cond_b

    .line 481
    iget-object v2, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    array-length v4, v2

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    goto/16 :goto_2

    .line 485
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_b

    .line 486
    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v3, :cond_7

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/commons/net/util/Base64;->encodeSize:I

    if-ge v3, v4, :cond_8

    .line 487
    :cond_7
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->resizeBuffer()V

    .line 489
    :cond_8
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    .line 490
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    aget-byte p2, p1, p2

    .line 491
    .local p2, "b":I
    if-gez p2, :cond_9

    .line 492
    add-int/lit16 p2, p2, 0x100

    .line 494
    :cond_9
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, p2

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->x:I

    .line 495
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->modulus:I

    if-nez v4, :cond_a

    .line 496
    iget-object v4, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v6, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    iget v7, p0, Lorg/apache/commons/net/util/Base64;->x:I

    shr-int/lit8 v8, v7, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v4, v5

    .line 497
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 v8, v7, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v4, v5

    .line 498
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    shr-int/lit8 v8, v7, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v6, v8

    aput-byte v8, v4, v5

    .line 499
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 500
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    .line 501
    iget v5, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    if-lez v5, :cond_a

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    if-gt v5, v6, :cond_a

    .line 502
    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    iget v6, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    array-length v7, v5

    invoke-static {v5, v0, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    iget-object v5, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 504
    iput v0, p0, Lorg/apache/commons/net/util/Base64;->currentLinePos:I

    .line 485
    .end local p2    # "b":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    move p2, v3

    goto/16 :goto_1

    .line 509
    .end local v2    # "i":I
    .end local v3    # "inPos":I
    .local p2, "inPos":I
    :cond_b
    :goto_2
    return-void
.end method

.method public encode([B)[B
    .locals 6
    .param p1, "pArray"    # [B

    .line 911
    invoke-direct {p0}, Lorg/apache/commons/net/util/Base64;->reset()V

    .line 912
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-static {p1, v0, v1}, Lorg/apache/commons/net/util/Base64;->getEncodeLength([BI[B)J

    move-result-wide v0

    .line 916
    .local v0, "len":J
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 917
    .local v2, "buf":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/commons/net/util/Base64;->setInitialBuffer([BII)V

    .line 918
    array-length v3, p1

    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    .line 919
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v4, v3}, Lorg/apache/commons/net/util/Base64;->encode([BII)V

    .line 921
    iget-object v3, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eq v3, v2, :cond_1

    .line 922
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/commons/net/util/Base64;->readResults([BII)I

    .line 926
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->isUrlSafe()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 927
    new-array v5, v3, [B

    .line 928
    .local v5, "smallerBuf":[B
    invoke-static {v2, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    move-object v2, v5

    .line 931
    .end local v5    # "smallerBuf":[B
    :cond_2
    return-object v2

    .line 913
    .end local v0    # "len":J
    .end local v2    # "buf":[B
    :cond_3
    :goto_0
    return-object p1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .line 890
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/util/Base64;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/util/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLineLength()I
    .locals 1

    .line 1040
    iget v0, p0, Lorg/apache/commons/net/util/Base64;->lineLength:I

    return v0
.end method

.method getLineSeparator()[B
    .locals 1

    .line 1044
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->lineSeparator:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method hasData()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUrlSafe()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->encodeTable:[B

    sget-object v1, Lorg/apache/commons/net/util/Base64;->URL_SAFE_ENCODE_TABLE:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readResults([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I

    .line 389
    iget-object v0, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lorg/apache/commons/net/util/Base64;->avail()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 391
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 392
    iget v3, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 394
    iget v1, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    iget v3, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    if-lt v1, v3, :cond_1

    .line 395
    iput-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    goto :goto_0

    .line 400
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 402
    :cond_1
    :goto_0
    return v0

    .line 404
    .end local v0    # "len":I
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/net/util/Base64;->eof:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method setInitialBuffer([BII)V
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outPos"    # I
    .param p3, "outAvail"    # I

    .line 421
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 422
    iput-object p1, p0, Lorg/apache/commons/net/util/Base64;->buffer:[B

    .line 423
    iput p2, p0, Lorg/apache/commons/net/util/Base64;->pos:I

    .line 424
    iput p2, p0, Lorg/apache/commons/net/util/Base64;->readPos:I

    .line 426
    :cond_0
    return-void
.end method
