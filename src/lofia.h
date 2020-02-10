#ifndef lofia_H
#define lofia_H

#define VERSION "1.1"
#define IN_RANGE(a,b,c) ((a >= b && a <= c) ? 1 : 0)
#define OPTS "hB:A:u:U:o:t:T:C:c:sp:lSf:O:"

struct lofia_opts {
    /* request options */
    char *cookies;
    char *useragent;
    long connection_timeout;
    int retry;
    char *proxy;

    /* scan options */
    char *url;
    FILE *list;
    FILE *output;
    size_t threads;
    char *parameter;

    int technique;
    char *phpcode;
    char *cmd;
    /* new char *cmdfunction on future ? */
    int shell;
    /* new ttyshell on future ? */

    char *connect;
    /* char *connect_proxy; */
    unsigned short port;
    int listen;

    unsigned short ssh_port;
    char *ssh_target;

    int get_source;
    FILE *source_output;
    char *remote_filename;

    int scan;
};


void parser_opts(int argc, char **argv, struct lofia_opts *opts);
void banner(void);
void help(void);
int main(int argc, char **argv);

#endif
