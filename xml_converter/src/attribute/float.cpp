#include "float.hpp"

#include<string>
#include<vector>

#include "../rapidxml-1.13/rapidxml.hpp"

float parse_float(rapidxml::xml_attribute<>* input, std::vector<XMLError*> *) {
    return std::stof(get_attribute_value(input));
}
