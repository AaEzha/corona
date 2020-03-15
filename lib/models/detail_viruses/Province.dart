/*
 * corona
 * Province.dart
 * Created by Cong Fandi on 15/3/2020
 * email : congfandi@gmail.com
 * Copyright © 2020 Cong Fandi. All rights reserved.
 *
 */

import 'Attributes.dart';

class Province {
    Attributes attributes;

    Province({this.attributes});

    factory Province.fromJson(Map<String, dynamic> json) {
        return Province(
            attributes: json['attributes'] != null ? Attributes.fromJson(json['attributes']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.attributes != null) {
            data['attributes'] = this.attributes.toJson();
        }
        return data;
    }
}