.class public abstract Lads_mobile_sdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 3

    .line 646
    invoke-static {p0}, Lads_mobile_sdk/bk;->b(I)I

    move-result p0

    .line 647
    invoke-static {p1}, Lads_mobile_sdk/bk;->b(I)I

    move-result p1

    const-string v0, "Unknown digestAlgorithm2: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    if-ne p0, v1, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 649
    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 650
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v2

    .line 654
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 655
    const-string v0, "Unknown digestAlgorithm1: "

    invoke-static {v0, p0}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 656
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 657
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 658
    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 3633
    const-string p0, "SHA-512"

    return-object p0

    .line 3635
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3636
    const-string v1, "Unknown content digest algorthm: "

    invoke-static {v1, p0}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 4338
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4339
    :cond_1
    const-string p0, "SHA-256"

    return-object p0
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 5180
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 5185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 5188
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 5192
    invoke-static {p0, v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 5193
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", remaining: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5194
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5195
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5196
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5198
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_1

    .line 2097
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 2098
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2103
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2105
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2106
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2107
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2110
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1

    :catchall_0
    move-exception p1

    .line 2111
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2112
    throw p1

    .line 2113
    :cond_0
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0

    .line 2114
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 2115
    const-string v0, "size: "

    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2928
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a([BI)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 5200
    aput-byte v0, p0, v1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 5201
    aput-byte v0, p0, v1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 5202
    aput-byte v0, p0, v1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x4

    .line 5203
    aput-byte p1, p0, v0

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/util/HashMap;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 18

    .line 5459
    invoke-static/range {p0 .. p0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5460
    invoke-static/range {p0 .. p0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5461
    invoke-static/range {p0 .. p0}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 5466
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v4

    move v7, v5

    move-object v9, v6

    .line 5467
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v10

    const/16 v11, 0x8

    const/16 v12, 0x301

    const/16 v13, 0x202

    const/16 v14, 0x201

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 5470
    :try_start_0
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 5471
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    if-lt v15, v11, :cond_3

    .line 5474
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 5475
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v11, v14, :cond_1

    if-eq v11, v13, :cond_1

    if-eq v11, v12, :cond_1

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_0
    if-eq v7, v5, :cond_2

    .line 5480
    invoke-static {v11, v7}, Lads_mobile_sdk/bk;->a(II)I

    move-result v12

    if-lez v12, :cond_0

    .line 5482
    :cond_2
    invoke-static {v10}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v9

    move v7, v11

    goto :goto_0

    .line 5483
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 5496
    :goto_1
    new-instance v1, Ljava/lang/SecurityException;

    .line 5497
    const-string v2, "Failed to parse signature record #"

    invoke-static {v2, v8}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5498
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    if-ne v7, v5, :cond_6

    if-nez v8, :cond_5

    .line 5505
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5507
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v1, "Unknown signature algorithm: 0x"

    if-eq v7, v14, :cond_8

    if-eq v7, v13, :cond_8

    if-eq v7, v12, :cond_7

    packed-switch v7, :pswitch_data_1

    .line 5508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v7

    .line 5510
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5511
    :pswitch_1
    const-string v5, "RSA"

    goto :goto_2

    .line 5516
    :cond_7
    const-string v5, "DSA"

    goto :goto_2

    .line 5517
    :cond_8
    const-string v5, "EC"

    :goto_2
    if-eq v7, v14, :cond_b

    if-eq v7, v13, :cond_a

    if-eq v7, v12, :cond_9

    packed-switch v7, :pswitch_data_2

    .line 5518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v3, v7

    .line 5520
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5521
    :pswitch_2
    const-string v1, "SHA512withRSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 5522
    :pswitch_3
    const-string v1, "SHA256withRSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 5523
    :pswitch_4
    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    sget-object v15, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v16, 0x40

    const/16 v17, 0x1

    const-string v13, "SHA-512"

    const-string v14, "MGF1"

    invoke-direct/range {v12 .. v17}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA512withRSA/PSS"

    invoke-static {v1, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 5524
    :pswitch_5
    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    sget-object v15, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v16, 0x20

    const/16 v17, 0x1

    const-string v13, "SHA-256"

    const-string v14, "MGF1"

    invoke-direct/range {v12 .. v17}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA256withRSA/PSS"

    invoke-static {v1, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 5542
    :cond_9
    const-string v1, "SHA256withDSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 5543
    :cond_a
    const-string v1, "SHA512withECDSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_3

    .line 5544
    :cond_b
    const-string v1, "SHA256withECDSA"

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 5545
    :goto_3
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 5546
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    .line 5550
    :try_start_1
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v10, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v10, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 5551
    invoke-virtual {v5, v10}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    .line 5552
    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    .line 5553
    invoke-virtual {v10, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v1, :cond_c

    .line 5555
    invoke-virtual {v10, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5557
    :cond_c
    invoke-virtual {v10, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 5558
    invoke-virtual {v10, v9}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v1, :cond_16

    .line 5571
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5572
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5573
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v8, v4

    .line 5575
    :cond_d
    :goto_4
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_f

    add-int/lit8 v8, v8, 0x1

    .line 5578
    :try_start_2
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 5579
    invoke-virtual {v9}, Ljava/nio/Buffer;->remaining()I

    move-result v10

    if-lt v10, v11, :cond_e

    .line 5582
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 5583
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v10, v7, :cond_d

    .line 5585
    invoke-static {v9}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    goto :goto_4

    .line 5586
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 5594
    :goto_5
    new-instance v1, Ljava/io/IOException;

    .line 5595
    const-string v2, "Failed to parse digest record #"

    invoke-static {v2, v8}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5596
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5600
    :cond_f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5604
    invoke-static {v7}, Lads_mobile_sdk/bk;->b(I)I

    move-result v1

    .line 5605
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_11

    .line 5607
    invoke-static {v3, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_6

    .line 5608
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    .line 5609
    invoke-static {v1}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5613
    :cond_11
    :goto_6
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 5616
    :goto_7
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    .line 5618
    invoke-static {v0}, Lads_mobile_sdk/bk;->b(Ljava/nio/ByteBuffer;)[B

    move-result-object v5

    .line 5621
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v7, p2

    .line 5622
    invoke-virtual {v7, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 5626
    new-instance v8, Lads_mobile_sdk/zj;

    invoke-direct {v8, v6, v5}, Lads_mobile_sdk/zj;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 5627
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_4
    move-exception v0

    .line 5628
    new-instance v1, Ljava/lang/SecurityException;

    .line 5629
    const-string v2, "Failed to decode certificate #"

    invoke-static {v2, v3}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 5630
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5636
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5639
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 5640
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 5641
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5646
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 5647
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5648
    :cond_14
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5649
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5650
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    .line 5651
    :goto_8
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to verify "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static a([I[Lads_mobile_sdk/wj;)[[B
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1162
    array-length v2, v1

    const/4 v5, 0x0

    move v6, v5

    const-wide/16 v7, 0x0

    :goto_0
    const-wide/32 v9, 0x100000

    if-ge v6, v2, :cond_0

    aget-object v11, v1, v6

    .line 1163
    invoke-interface {v11}, Lads_mobile_sdk/wj;->size()J

    move-result-wide v11

    const-wide/32 v13, 0xfffff

    add-long/2addr v11, v13

    .line 1164
    div-long/2addr v11, v9

    add-long/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v11, 0x1fffff

    cmp-long v2, v7, v11

    if-gez v2, :cond_d

    long-to-int v2, v7

    .line 1165
    array-length v6, v0

    new-array v6, v6, [[B

    move v7, v5

    .line 1166
    :goto_1
    array-length v8, v0

    const-string v12, "Unknown content digest algorthm: "

    const/4 v13, 0x2

    const/4 v15, 0x5

    const-wide/16 v16, 0x0

    const/4 v3, 0x1

    if-ge v7, v8, :cond_3

    .line 1167
    aget v4, v0, v7

    if-eq v4, v3, :cond_2

    if-ne v4, v13, :cond_1

    const/16 v11, 0x40

    goto :goto_2

    .line 1168
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1169
    invoke-static {v12, v4}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v11, 0x20

    :goto_2
    mul-int/2addr v11, v2

    add-int/2addr v11, v15

    .line 1171
    new-array v3, v11, [B

    const/16 v4, 0x5a

    .line 1173
    aput-byte v4, v3, v5

    .line 1174
    invoke-static {v3, v2}, Lads_mobile_sdk/bk;->a([BI)V

    .line 1178
    aput-object v3, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1181
    :cond_3
    new-array v2, v15, [B

    const/16 v4, -0x5b

    .line 1182
    aput-byte v4, v2, v5

    .line 1184
    array-length v4, v0

    new-array v7, v4, [Ljava/security/MessageDigest;

    move v8, v5

    .line 1185
    :goto_3
    array-length v5, v0

    const-string v11, " digest not supported"

    if-ge v8, v5, :cond_4

    .line 1186
    aget v5, v0, v8

    .line 1187
    invoke-static {v5}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 1189
    :try_start_0
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    aput-object v18, v7, v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1191
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v5, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1198
    :cond_4
    array-length v5, v1

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v8, v5, :cond_b

    move/from16 v19, v15

    aget-object v15, v1, v8

    .line 1200
    invoke-interface {v15}, Lads_mobile_sdk/wj;->size()J

    move-result-wide v20

    move-wide/from16 v22, v20

    move/from16 v20, v14

    move-wide/from16 v13, v22

    move-wide/from16 v23, v16

    move/from16 v22, v18

    :goto_5
    cmp-long v21, v13, v16

    if-lez v21, :cond_a

    move/from16 v25, v4

    .line 1202
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1203
    invoke-static {v2, v3}, Lads_mobile_sdk/bk;->a([BI)V

    move/from16 v4, v25

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v4, :cond_5

    .line 1205
    aget-object v10, v7, v9

    invoke-virtual {v10, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    move-wide/from16 v9, v23

    .line 1208
    :try_start_1
    invoke-interface {v15, v7, v9, v10, v3}, Lads_mobile_sdk/wj;->a([Ljava/security/MessageDigest;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v2

    const/4 v1, 0x0

    .line 1215
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 1216
    aget v2, v0, v1

    move/from16 v24, v1

    .line 1217
    aget-object v1, v6, v24

    move/from16 v26, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    const/16 v2, 0x40

    goto :goto_8

    .line 1218
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1219
    invoke-static {v12, v2}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1220
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v2, 0x20

    .line 1221
    :goto_8
    aget-object v4, v7, v24

    move/from16 v27, v5

    move/from16 v5, v22

    mul-int v22, v5, v2

    move-object/from16 v28, v6

    add-int/lit8 v6, v22, 0x5

    .line 1223
    invoke-virtual {v4, v1, v6, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v1

    if-ne v1, v2, :cond_8

    add-int/lit8 v1, v24, 0x1

    move/from16 v22, v5

    move/from16 v4, v26

    move/from16 v5, v27

    move-object/from16 v6, v28

    goto :goto_7

    .line 1228
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected output size of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v5, v22

    int-to-long v1, v3

    add-long v3, v9, v1

    sub-long/2addr v13, v1

    add-int/lit8 v22, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v5, v27

    const-wide/32 v9, 0x100000

    move-wide/from16 v23, v3

    move/from16 v4, v26

    const/4 v3, 0x1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v5, v22

    .line 1230
    new-instance v1, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to digest chunk #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of section #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move-object/from16 v23, v2

    move/from16 v26, v4

    move/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v3, v20

    move/from16 v5, v22

    add-int/lit8 v14, v3, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v18, v5

    move/from16 v15, v19

    move/from16 v5, v27

    const/4 v3, 0x1

    const-wide/32 v9, 0x100000

    const/4 v13, 0x2

    goto/16 :goto_4

    :cond_b
    move-object/from16 v28, v6

    .line 1259
    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v5, 0x0

    .line 1260
    :goto_9
    array-length v2, v0

    if-ge v5, v2, :cond_c

    .line 1261
    aget v2, v0, v5

    .line 1262
    aget-object v3, v28, v5

    .line 1263
    invoke-static {v2}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1266
    :try_start_2
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1270
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 1271
    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :catch_2
    move-exception v0

    .line 1272
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    return-object v1

    .line 1273
    :cond_d
    new-instance v0, Ljava/security/DigestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many chunks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .locals 26

    move-object/from16 v0, p0

    .line 5205
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5213
    :cond_0
    invoke-static {v0, v2}, Lads_mobile_sdk/y24;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0xffff

    .line 5221
    invoke-static {v0, v1}, Lads_mobile_sdk/y24;->a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1e

    .line 5222
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 5223
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x14

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_2

    goto :goto_1

    .line 5224
    :cond_2
    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5227
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const v6, 0x504b0607

    if-eq v1, v6, :cond_1d

    .line 5228
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-string v7, "ByteBuffer byte order must be little endian"

    if-ne v1, v6, :cond_1c

    .line 5229
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/16 v10, 0x10

    add-int/2addr v1, v10

    .line 5230
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v11, v1

    const-wide v13, 0xffffffffL

    and-long v17, v11, v13

    cmp-long v1, v17, v4

    if-gez v1, :cond_1b

    .line 5231
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v1, v6, :cond_1a

    .line 5232
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    .line 5233
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v11, v1

    and-long/2addr v11, v13

    add-long v11, v17, v11

    cmp-long v1, v11, v4

    if-nez v1, :cond_19

    const-wide/16 v11, 0x20

    cmp-long v1, v17, v11

    if-ltz v1, :cond_18

    const/16 v1, 0x18

    .line 5234
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 5235
    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5236
    invoke-virtual {v11}, Ljava/nio/Buffer;->capacity()I

    move-result v12

    move-wide/from16 v21, v8

    int-to-long v8, v12

    sub-long v8, v17, v8

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5237
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v11}, Ljava/nio/Buffer;->capacity()I

    move-result v12

    invoke-virtual {v0, v8, v9, v12}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v8, 0x8

    .line 5238
    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v15

    const-wide v19, 0x20676953204b5041L

    cmp-long v9, v15, v19

    if-nez v9, :cond_17

    .line 5239
    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v15

    const-wide v19, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v9, v15, v19

    if-nez v9, :cond_17

    move-wide/from16 v23, v13

    .line 5244
    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v13

    .line 5245
    invoke-virtual {v11}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    int-to-long v11, v9

    cmp-long v9, v13, v11

    if-ltz v9, :cond_16

    const-wide/32 v11, 0x7ffffff7

    cmp-long v9, v13, v11

    if-gtz v9, :cond_16

    const-wide/16 v11, 0x8

    add-long/2addr v11, v13

    long-to-int v9, v11

    int-to-long v11, v9

    sub-long v11, v17, v11

    cmp-long v15, v11, v21

    if-ltz v15, :cond_15

    .line 5256
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 5257
    invoke-virtual {v9, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5258
    invoke-virtual {v0, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5259
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    move/from16 v16, v1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    move/from16 v25, v10

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    invoke-virtual {v0, v15, v1, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 5260
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    cmp-long v10, v0, v13

    if-nez v10, :cond_14

    .line 5266
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 5267
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 5268
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 5269
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne v0, v6, :cond_13

    .line 5270
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    if-lt v0, v8, :cond_12

    .line 5271
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    .line 5272
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    if-gt v0, v9, :cond_11

    .line 5275
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v6

    .line 5276
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v9

    .line 5278
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5279
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5280
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5281
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5282
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5285
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5286
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5287
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v2

    .line 5288
    :goto_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    add-int/2addr v1, v6

    .line 5290
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    if-lt v9, v8, :cond_f

    .line 5294
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    const-wide/16 v11, 0x4

    cmp-long v11, v9, v11

    const-string v12, " size out of range: "

    const-string v15, "APK Signing Block entry #"

    if-ltz v11, :cond_e

    const-wide/32 v19, 0x7fffffff

    cmp-long v11, v9, v19

    if-gtz v11, :cond_e

    long-to-int v9, v9

    .line 5301
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/2addr v10, v9

    .line 5302
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    if-gt v9, v11, :cond_d

    .line 5307
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    const v12, 0x7109871a

    if-ne v11, v12, :cond_c

    add-int/lit8 v9, v9, -0x4

    .line 5309
    invoke-static {v0, v9}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5310
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v16

    .line 5311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5312
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5315
    :try_start_1
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_5

    .line 5321
    :try_start_2
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move v10, v2

    .line 5325
    :goto_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 5328
    :try_start_3
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 5329
    invoke-static {v11, v1, v9}, Lads_mobile_sdk/bk;->a(Ljava/nio/ByteBuffer;Ljava/util/HashMap;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 5330
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 5332
    :goto_4
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse/verify signer #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " block"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    if-lt v10, v6, :cond_b

    .line 5342
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5343
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5357
    new-instance v9, Lads_mobile_sdk/xj;

    const-wide/16 v11, 0x0

    move-object/from16 v10, v16

    invoke-direct/range {v9 .. v14}, Lads_mobile_sdk/xj;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 5359
    new-instance v15, Lads_mobile_sdk/xj;

    sub-long v19, v4, v17

    invoke-direct/range {v15 .. v20}, Lads_mobile_sdk/xj;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 5365
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5366
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5367
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v4, v3, :cond_8

    .line 5368
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    cmp-long v4, v13, v21

    if-ltz v4, :cond_7

    cmp-long v4, v13, v23

    if-gtz v4, :cond_7

    .line 5369
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    long-to-int v3, v13

    invoke-virtual {v0, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 5370
    new-instance v3, Lads_mobile_sdk/vj;

    invoke-direct {v3, v0}, Lads_mobile_sdk/vj;-><init>(Ljava/nio/ByteBuffer;)V

    .line 5372
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 5374
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 5375
    aput v10, v4, v7

    add-int/2addr v7, v6

    goto :goto_5

    :cond_4
    const/4 v5, 0x3

    .line 5380
    :try_start_4
    new-array v5, v5, [Lads_mobile_sdk/wj;

    aput-object v9, v5, v2

    aput-object v15, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 5381
    invoke-static {v4, v5}, Lads_mobile_sdk/bk;->a([I[Lads_mobile_sdk/wj;)[[B

    move-result-object v3
    :try_end_4
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    if-ge v2, v0, :cond_6

    .line 5388
    aget v5, v4, v2

    .line 5389
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 5390
    aget-object v7, v3, v2

    .line 5391
    invoke-static {v6, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5392
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 5393
    invoke-static {v5}, Lads_mobile_sdk/bk;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " digest of contents did not verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5394
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/security/cert/X509Certificate;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/X509Certificate;

    return-object v0

    :catch_3
    move-exception v0

    .line 5395
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to compute digest(s) of contents"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5396
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uint32 value of out range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5397
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5398
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5399
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No content digests found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5400
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signers found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    .line 5401
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to read list of signers"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    .line 5402
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5403
    :cond_c
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    .line 5404
    :cond_d
    new-instance v2, Lads_mobile_sdk/yj;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", available: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5406
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5407
    :cond_e
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5408
    :cond_f
    new-instance v0, Lads_mobile_sdk/yj;

    .line 5409
    const-string v2, "Insufficient data to read size of APK Signing Block entry #"

    invoke-static {v2, v1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5410
    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5433
    :cond_10
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 5434
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5435
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5436
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5437
    throw v0

    .line 5438
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end > capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5439
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end < start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " < 8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5440
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5441
    :cond_14
    new-instance v2, Lads_mobile_sdk/yj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5442
    :cond_15
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5443
    :cond_16
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block size out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5444
    :cond_17
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-wide/from16 v10, v17

    .line 5445
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5446
    :cond_19
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5447
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move-wide/from16 v10, v17

    .line 5448
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZIP Central Directory offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5449
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5450
    :cond_1d
    new-instance v0, Lads_mobile_sdk/yj;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5451
    :cond_1e
    new-instance v0, Lads_mobile_sdk/yj;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found in file with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5453
    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lads_mobile_sdk/yj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 5652
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5654
    :try_start_0
    invoke-static {v0}, Lads_mobile_sdk/bk;->a(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;

    move-result-object p0

    .line 5655
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5659
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 5660
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5664
    :catch_1
    throw p0
.end method

.method public static b(I)I
    .locals 4

    const/16 v0, 0x201

    if-eq p0, v0, :cond_1

    const/16 v0, 0x202

    if-eq p0, v0, :cond_0

    const/16 v0, 0x301

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, p0

    .line 692
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/nio/ByteBuffer;)[B
    .locals 4

    .line 1542
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1545
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1549
    new-array v0, v0, [B

    .line 1550
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 1551
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1552
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1553
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Negative length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
