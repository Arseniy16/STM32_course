int symbols(char c)
{
	uint32_t out = 0;
	switch(c)
	{
		case 'a': out = bits(0x77); break;
		case 'b': out = bits(0x7c); break;
		case 'c': out = bits(0x39); break;
		case 'd': out = bits(0x5e); break;
		case 'e': out = bits(0x79); break;
		case 'f': out = bits(0x71); break;
		case 'g': out = bits(0x7d); break;
		case 'h': out = bits(0x76); break;
		case 'i': out = bits(0x6); break;
		case 'j': out = bits(0xe); break;
		case 'l': out = bits(0x38); break;
		case 'n': out = bits(0x54); break;	
		case 'o': out = 0x3f; break;
		case 'p': out = 0x73; break;
		case 's': out = 0x6d; break;
		case 'u': out = 0x3e; break;
		case 'z': out = 0x5b; break;
		case 'q': out = 0x67; break;
		case 'r': out = 0x50; break;
		case 't': out = 0x78; break;
		case 'y': out = 0x6e; break;
		case ',':
		case '.': out = 0x80; break;
		case '!': out = 0x86; break;
		case '?': out = 0xA7; break;
		case '_': out = 0x8; break;
		case '-': out = 0x40; break;
		default: out = 0x0; break;
	}
	return out;
}