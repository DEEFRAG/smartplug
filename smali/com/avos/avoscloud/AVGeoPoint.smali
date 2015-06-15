.class public Lcom/avos/avoscloud/AVGeoPoint;
.super Ljava/lang/Object;
.source "AVGeoPoint.java"


# static fields
.field static EARTH_MEAN_RADIUS_KM:D

.field static ONE_KM_TO_MILES:D


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide v0, 0x40b8ea23d70a3d71L    # 6378.14

    sput-wide v0, Lcom/avos/avoscloud/AVGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    .line 25
    const-wide v0, 0x3ff9bfdf7e8038a0L    # 1.609344

    sput-wide v0, Lcom/avos/avoscloud/AVGeoPoint;->ONE_KM_TO_MILES:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    .line 34
    iput-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    .line 35
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    .line 79
    iput-wide p3, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    .line 80
    return-void
.end method


# virtual methods
.method public distanceInKilometersTo(Lcom/avos/avoscloud/AVGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 43
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "start":Landroid/location/Location;
    iget-wide v2, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 45
    iget-wide v2, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 46
    new-instance v0, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "end":Landroid/location/Location;
    iget-wide v2, p1, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 48
    iget-wide v2, p1, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    return-wide v2
.end method

.method public distanceInMilesTo(Lcom/avos/avoscloud/AVGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVGeoPoint;->distanceInKilometersTo(Lcom/avos/avoscloud/AVGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/avos/avoscloud/AVGeoPoint;->ONE_KM_TO_MILES:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInRadiansTo(Lcom/avos/avoscloud/AVGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/avos/avoscloud/AVGeoPoint;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVGeoPoint;->distanceInKilometersTo(Lcom/avos/avoscloud/AVGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/avos/avoscloud/AVGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "l"    # D

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/avos/avoscloud/AVGeoPoint;->latitude:D

    .line 96
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "l"    # D

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/avos/avoscloud/AVGeoPoint;->longitude:D

    .line 112
    return-void
.end method
