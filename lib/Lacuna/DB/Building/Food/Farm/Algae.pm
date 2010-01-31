package Lacuna::DB::Building::Food::Farm::Algae;

use Moose;
extends 'Lacuna::DB::Building::Food::Farm';

has '+image' => ( 
    default => 'algae', 
);

has '+name' => (
    default => 'Algae Cropper',
);

has '+food_produced' (
    default => 'Algae',
);

has '+food_to_build' => (
    default => -10,
);

has '+energy_to_build' => (
    default => -100,
);

has '+ore_to_build' => (
    default => -55,
);

has '+water_to_build' => (
    default => -30,
);

has '+waste_to_build' => (
    default => 20,
);

has '+time_to_build' => (
    default => 60,
);

has '+food_production' => (
    default => 5,
);

has '+energy_production' => (
    default => 3,
);

has '+ore_production' => (
    default => -1,
);

has '+water_production' => (
    default => -2,
);

has '+waste_production' => (
    default => 1,
);



no Moose;
__PACKAGE__->meta->make_immutable;
