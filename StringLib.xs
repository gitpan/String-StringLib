#ifdef __cplusplus
extern "C" {
#endif
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include <ctype.h>
#include <string.h>
#ifdef __cplusplus
}
#endif


MODULE = String::StringLib		PACKAGE = String::StringLib		
PROTOTYPES: ENABLE

void
StripTSpace(arg)
	char *arg
	CODE:
	char *a;
	int i = SvOK(ST(0));
	if (!i)
	    XSRETURN_UNDEF;
	for (a = arg + strlen(arg) - 1; *a && isspace(*a); --a)
	    ;
	*++a = 0;
	OUTPUT:
	arg

void
StripLSpace(arg)	
	char *arg
	CODE:
	char *a, *b;
	int i = SvOK(ST(0));
	if (!i)
	    XSRETURN_UNDEF;
	for (a = arg; *a && isspace(*a); *a++)
	    ;

	for (b = arg; *a; *b++ = *a++)
	    ;

	*b = 0;
	OUTPUT:
	arg

void
StripLTSpace(arg)
	char *arg
	CODE:
	char *a, *b, *c;
	int i = SvOK(ST(0));
	if (!i)
	    XSRETURN_UNDEF;
	for (a = arg; *a && isspace(*a); *a++)
	    ;

	for (b = arg + strlen(arg) - 1; *b && isspace(*b); --b)
	    ;
	*++b = 0;

	for (c = arg; a <= b; *c++ = *a++)
	    ;
	OUTPUT:
	arg

void
StripSpace(arg)
	char *arg
	CODE:
	char *a, *b;
	int i = SvOK(ST(0));
	if (!i)
	    XSRETURN_UNDEF;

	for (a = b = arg; *b; *b++)
	    if (!isspace(*b))
		*a++ = *b;
	*a = 0;

	OUTPUT:
	arg

