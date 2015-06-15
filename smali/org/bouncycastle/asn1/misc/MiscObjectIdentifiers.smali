.class public interface abstract Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final netscape:Ljava/lang/String; = "2.16.840.1.113730.1"

.field public static final netscapeBaseURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeCARevocationURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeCApolicyURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeCertComment:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeCertType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeRenewalURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeRevocationURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final netscapeSSLServerName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final verisign:Ljava/lang/String; = "2.16.840.1.113733.1"

.field public static final verisignCzagExtension:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeBaseURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCARevocationURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRenewalURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCApolicyURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeSSLServerName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113730.1.13"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertComment:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.16.840.1.113733.1.6.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
