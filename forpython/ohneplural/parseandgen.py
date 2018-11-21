import lxml.etree;
import sys;


#main
for arg in sys.argv[1:]:
    #print("another arg through *argv:", arg)
    tree = lxml.etree.parse(arg);
    root = tree.getroot();
    uls = tree.findall('//ul');
    if(len(uls)>0):
        ul = uls[0];
        sys.stderr.write('first list in {} is of len {}\n'.format(arg,len(ul)));
        for li in ul:
            sys.stdout.write('{}\n'.format(li[0].attrib['title']));
