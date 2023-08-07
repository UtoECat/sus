void write(int , char*, unsigned long int);
void exit(int);

static const char data[] = {
	20, 32, 2, 46, 1, 58, 4, 126, 1, 
	58, 3, 46, 1, 10, 17, 32, 1, 46, 1, 
	33, 1, 89, 2, 71, 1, 80, 4, 71, 2, 
	80, 2, 71, 1, 53, 1, 74, 1, 55, 1, 
	58, 1, 10, 16, 32, 1, 94, 1, 71, 1, 
	35, 1, 53, 1, 63, 2, 33, 5, 126, 2, 
	33, 1, 55, 1, 63, 1, 53, 1, 71, 1, 
	66, 1, 53, 1, 58, 1, 10, 15, 32, 1, 
	94, 1, 66, 1, 35, 1, 63, 7, 126, 4, 
	33, 4, 55, 1, 89, 1, 35, 1, 66, 1, 
	126, 1, 10, 14, 32, 1, 46, 1, 74, 1, 
	64, 1, 80, 1, 33, 4, 126, 1, 33, 1, 
	89, 1, 71, 5, 66, 2, 71, 2, 66, 1, 
	35, 1, 64, 1, 66, 1, 33, 1, 10, 14, 
	32, 1, 126, 2, 35, 1, 89, 1, 33, 3, 
	126, 1, 63, 1, 66, 1, 38, 1, 89, 1, 
	126, 2, 58, 5, 46, 1, 58, 1, 94, 1, 
	33, 1, 63, 2, 53, 1, 33, 1, 10, 12, 
	32, 1, 46, 1, 32, 1, 55, 1, 64, 1, 
	66, 1, 63, 1, 33, 2, 126, 1, 33, 1, 
	80, 1, 64, 1, 80, 1, 46, 13, 32, 1, 
	55, 1, 66, 1, 74, 1, 10, 8, 32, 1, 
	94, 1, 63, 1, 89, 1, 80, 1, 71, 1, 
	66, 2, 38, 1, 71, 1, 55, 3, 126, 1, 
	33, 1, 80, 1, 64, 1, 80, 1, 58, 1, 
	46, 12, 32, 1, 46, 1, 89, 1, 66, 1, 
	58, 1, 10, 7, 32, 1, 74, 1, 35, 1, 
	71, 1, 89, 1, 63, 1, 55, 1, 89, 1, 
	35, 1, 38, 1, 80, 1, 55, 3, 126, 1, 
	33, 1, 74, 1, 38, 1, 35, 1, 33, 3, 
	58, 8, 46, 1, 58, 1, 46, 1, 94, 1, 
	80, 1, 35, 1, 126, 1, 10, 6, 32, 1, 
	33, 1, 35, 1, 71, 1, 63, 3, 55, 1, 
	89, 1, 35, 1, 38, 1, 80, 1, 55, 1, 
	33, 3, 126, 1, 33, 1, 80, 1, 64, 1, 
	71, 1, 33, 1, 94, 8, 58, 2, 94, 1, 
	33, 1, 53, 1, 35, 1, 74, 1, 10, 6, 
	32, 1, 71, 1, 38, 1, 80, 3, 74, 1, 
	89, 1, 71, 1, 64, 1, 35, 1, 53, 1, 
	63, 1, 33, 4, 126, 1, 33, 1, 53, 2, 
	35, 1, 71, 1, 80, 4, 53, 2, 80, 2, 
	71, 1, 66, 1, 38, 1, 64, 1, 53, 1, 
	10, 6, 32, 1, 66, 1, 35, 1, 53, 3, 
	74, 1, 89, 1, 71, 1, 64, 1, 35, 1, 
	53, 1, 74, 1, 63, 1, 33, 5, 126, 1, 
	33, 1, 63, 1, 89, 1, 53, 4, 80, 2, 
	53, 3, 89, 1, 71, 1, 64, 1, 53, 1, 
	10, 5, 32, 1, 94, 1, 35, 1, 66, 1, 
	89, 3, 74, 1, 89, 1, 71, 1, 64, 1, 
	35, 1, 53, 2, 74, 1, 63, 1, 33, 15, 
	126, 1, 33, 1, 63, 1, 53, 1, 38, 1, 
	53, 1, 10, 5, 32, 1, 126, 1, 35, 1, 
	66, 1, 89, 3, 74, 1, 89, 1, 71, 1, 
	64, 1, 35, 1, 53, 4, 74, 1, 55, 1, 
	33, 12, 126, 1, 33, 1, 63, 1, 74, 1, 
	53, 1, 38, 1, 71, 1, 46, 1, 10, 5, 
	32, 1, 126, 1, 35, 1, 66, 1, 89, 3, 
	74, 1, 89, 1, 71, 1, 64, 1, 35, 1, 
	53, 6, 74, 2, 55, 1, 33, 7, 126, 2, 
	33, 1, 63, 2, 74, 1, 53, 1, 35, 1, 
	66, 1, 126, 1, 10, 5, 32, 1, 94, 2, 
	35, 1, 89, 3, 74, 1, 89, 1, 71, 1, 
	64, 1, 35, 1, 53, 10, 74, 6, 63, 5, 
	74, 1, 53, 1, 35, 1, 66, 1, 94, 1, 
	10, 6, 32, 1, 80, 1, 38, 1, 80, 1, 
	89, 2, 74, 1, 89, 1, 66, 1, 64, 1, 
	35, 1, 89, 21, 74, 1, 53, 1, 38, 1, 
	80, 1, 10, 6, 32, 1, 58, 1, 80, 1, 
	35, 1, 66, 1, 71, 2, 80, 1, 35, 1, 
	64, 1, 66, 1, 89, 7, 74, 1, 53, 3, 
	80, 1, 53, 3, 89, 2, 53, 2, 89, 2, 
	74, 1, 80, 1, 64, 1, 53, 1, 10, 8, 
	32, 1, 94, 1, 63, 1, 74, 1, 89, 1, 
	71, 1, 38, 1, 64, 1, 71, 1, 89, 6, 
	74, 1, 53, 1, 35, 1, 38, 1, 53, 1, 
	63, 1, 53, 1, 35, 1, 38, 1, 35, 1, 
	66, 1, 71, 1, 53, 1, 89, 1, 74, 1, 
	89, 1, 71, 1, 38, 1, 89, 1, 10, 13, 
	32, 1, 63, 1, 64, 1, 66, 1, 89, 6, 
	74, 1, 53, 1, 38, 1, 66, 3, 32, 1, 
	80, 1, 38, 1, 80, 1, 89, 4, 74, 1, 
	53, 1, 35, 1, 66, 1, 126, 1, 10, 13, 
	32, 1, 126, 2, 35, 1, 89, 6, 74, 1, 
	80, 1, 38, 1, 71, 3, 32, 1, 74, 1, 
	38, 1, 66, 1, 89, 3, 74, 1, 53, 1, 
	66, 1, 38, 1, 63, 1, 10, 13, 32, 1, 
	46, 1, 74, 1, 64, 1, 66, 6, 89, 1, 
	66, 1, 64, 1, 126, 4, 32, 1, 74, 1, 
	66, 1, 35, 3, 66, 1, 35, 1, 71, 1, 
	33, 1, 10, 14, 32, 1, 46, 1, 55, 1, 
	71, 7, 66, 1, 63, 7, 32, 1, 94, 1, 
	33, 1, 55, 1, 126, 1, 58, 1, 10, 17, 
	32, 2, 46, 1, 58, 2, 126, 2, 46, 1, 
	10, 0, 0
};

static char buff [128] = {0};
static int  pos = 0;

static void flush() {
	write(1, buff, pos);
	pos = 0;
}

static void put(char c) {
	buff[pos++] = c;
	if (pos >= 128) {
		flush();
	}	
}

void _start() {
	const char* p = data;

	unsigned char n;
	char c;

	while ((n = p[0]) != 0) {
		c = p[1];
		while (n--) put(c);
		p += 2;
	}
	flush();
	exit(0);
}
