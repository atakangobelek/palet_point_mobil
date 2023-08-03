// To parse this JSON data, do
//
//     final getProposalModel = getProposalModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

import 'package:satta_mobil/utils/model/base_model.dart';

GetProposalModel getProposalModelFromMap(String str) => GetProposalModel.fromMap(json.decode(str));

String getProposalModelToMap(GetProposalModel data) => json.encode(data.toMap());

class GetProposalModel extends BaseModel{
    final int proposalId;
    final String proposalState;
    final String demandListName;
    final String proposalValidDate;
    final bool includeShipmentCost;
    final int paymentDueDate;
    final String deliveryDate;
    final int updateCounter;
    final String proposalCreatedAt;
    final List<ProductProposal> productProposals;

    GetProposalModel({
        required this.proposalId,
        required this.proposalState,
        required this.demandListName,
        required this.proposalValidDate,
        required this.includeShipmentCost,
        required this.paymentDueDate,
        required this.deliveryDate,
        required this.updateCounter,
        required this.proposalCreatedAt,
        required this.productProposals,
    });

    factory GetProposalModel.fromMap(Map<String, dynamic> json) => GetProposalModel(
        proposalId: json["proposal_id"],
        proposalState: json["proposal_state"],
        demandListName: json["demand_list_name"],
        proposalValidDate: json["proposal_valid_date"],
        includeShipmentCost: json["include_shipment_cost"],
        paymentDueDate: json["payment_due_date"],
        deliveryDate: json["delivery_date"],
        updateCounter: json["update_counter"],
        proposalCreatedAt: json["proposal_created_at"],
        productProposals: List<ProductProposal>.from(json["product_proposals"].map((x) => ProductProposal.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "proposal_id": proposalId,
        "proposal_state": proposalState,
        "demand_list_name": demandListName,
        "proposal_valid_date": proposalValidDate,
        "include_shipment_cost": includeShipmentCost,
        "payment_due_date": paymentDueDate,
        "delivery_date": deliveryDate,
        "update_counter": updateCounter,
        "proposal_created_at": proposalCreatedAt,
        "product_proposals": List<dynamic>.from(productProposals.map((x) => x.toMap())),
    };

  @override
  String toString() {
    return 'Proposal{proposalId: $proposalId, proposalState: $proposalState, demandListName: $demandListName, proposalValidDate: $proposalValidDate, includeShipmentCost: $includeShipmentCost, paymentDueDate: $paymentDueDate, deliveryDate: $deliveryDate, updateCounter: $updateCounter, proposalCreatedAt: $proposalCreatedAt,  productProposals: $productProposals}';
  }
}

class ProductProposal {
    final String productName;
    final int amount;
    final String productUnit;

    ProductProposal({
        required this.productName,
        required this.amount,
        required this.productUnit,
    });

    factory ProductProposal.fromMap(Map<String, dynamic> json) => ProductProposal(
        productName: json["product_name"],
        amount: json["amount"],
        productUnit: json["product_unit"],
    );

    Map<String, dynamic> toMap() => {
        "product_name": productName,
        "amount": amount,
        "product_unit": productUnit,
    };
    @override
  String toString() {
    return 'ProductProposal{productName: $productName, amount: $amount, productUnit:$productUnit}';
  }
}

