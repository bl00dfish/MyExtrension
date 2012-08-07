## OTRS Developer Training


package Kernel::Modules::AgentLinuxhotel;


use strict;
use warnings;



sub new {
 my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {%Param};
    bless( $Self, $Type );

    return $Self;


}


sub Run {
 my ( $Self, %Param ) = @_;


#### my $Output ="Content-Type: text/html;

#####  <h1>Hello World</h1>";
####

 # ConfigObject, LogObject, DBObject


 my $Output = $Self->{LayoutObject}->Header(
   Title=> 'OTRS Test Page'
   );


#   $Self->{DBObject}->Prepare(
#               SQL   => "SELECT id, name FROM ticket_state",
#                  );
#
#               while (my @Row = $Self->{DBObject}->FetchrowArray()) {
#                  
#
#               $Self->{LayoutObject}->Block(
 #                     Name=>'Row',
#                      Data => {
#                      Key => $Row[0],
#                      Value => $Row[1],
#                },
#          );   
#       }



  $Output .= $Self->{LayoutObject}->Output(
     TemplateFile => 'AgentLinuxhotel',
     Data => { 
          Key1 => "Datum",
          Key2 => $Self->{TimeObject}->CurrentTimestamp(),
    


        }, 
    );
 
  $Output .= $Self->{LayoutObject}->Footer();

 return $Output;

}

1;
