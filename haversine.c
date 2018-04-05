#include <math.h>
#include <stdio.h>

long double
haversine(
	long double lat1,
	long double lng1,
	long double lat2,
	long double lng2
) {
	long double radius=6371000;
	long double deg2rad=0.01745329251994329576;
	
	long double ret;
	
	lat1 *= deg2rad;
	lng1 *= deg2rad;
	lat2 *= deg2rad;
	lng2 *= deg2rad;
	
	ret = radius * acos(sin(lat1)*sin(lat2) + cos(lat1)*cos(lat2)*cos(lng2-lng1));

	return ret;
}

int
main(void)
{
	long double lat1, lng1;
	long double lat2, lng2;
	int i1, i2;

	while (scanf("%d%d%Lf%Lf%Lf%Lf",
		&i1, &i2, &lat1, &lng1, &lat2, &lng2) == 6) {
	
		printf("%d %d %Lf\n", i1, i2, haversine(lat1, lng1, lat2, lng2));
	}
	
	return 0;
}
