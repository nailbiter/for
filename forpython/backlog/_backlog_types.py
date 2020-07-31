from collections import namedtuple
import logging
import json

class Project(namedtuple("Project","id projectKey name chartEnabled subtaskingEnabled projectLeaderCanEditProjectLeader useWikiTreeView textFormattingRule archived displayOrder useDevAttributes")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
    def __str__(self):
        return f"Project({json.dumps(self._asdict(),indent=2,ensure_ascii=False)});"
#FIXME: capitalize class names
class Issue(namedtuple("Issue","actualHours assignee attachments category created createdUser customFields description dueDate estimatedHours id issueKey issueType keyId milestone parentIssueId priority projectId resolution sharedFiles stars startDate status summary updated updatedUser versions")):
    _LOGGER = logging.getLogger("Issue")
    @classmethod
    def from_dict(cls,d):
        Issue._LOGGER.debug(d)
        _d = {**d,
                "issueType":IssueType.from_dict(d["issueType"]),
                "assignee":User.from_dict(d["assignee"]),
                "category":[category.from_dict(c) for c in d["category"]],
                "createdUser":User.from_dict(d["createdUser"]),
                "updatedUser":User.from_dict(d["updatedUser"]),
                "priority":Priority.from_dict(d["priority"]),
                "status":Status.from_dict(d["status"]),
                "updatedUser":User.from_dict(d["updatedUser"]),
                }
        res = cls(**_d)
        return res
    def __str__(self):
        _d = self._asdict()
        for fn in "issueType","assignee","createdUser","updatedUser","status":
            _d[fn] = str(_d[fn])
        _s = "\n".join([f"  {k}: {v}" for k,v in _d.items()])
        return f"IssueType({_s});"
    def to_json_dict(self):
        _d = self._asdict()
        for fn in "assignee","createdUser","updatedUser","status":
            if _d[fn] is not None:
                _d[fn] = _d[fn].to_json_dict()
        return _d
class IssueType(namedtuple("IssueType","id projectId name color displayOrder templateSummary templateDescription",defaults=["",""])):
    _LOGGER = logging.getLogger("IssueType")
    @classmethod
    def from_dict(cls,d):
        IssueType._LOGGER.debug(f"d: {d}")
        return cls(**d)
    def __str__(self):
        return f"IssueType({json.dumps(self._asdict(),indent=2,ensure_ascii=False)});"
class User(namedtuple("User","id userId name roleType lang mailAddress nulabAccount keyword",defaults=["",""])):
    _LOGGER = logging.getLogger("User")
    @classmethod
    def from_dict(cls,d):
        User._LOGGER.debug(f"d: {d}")
        if d is None:
            return None
        _d = {**d,"nulabAccount":nulabAccount.from_dict(d["nulabAccount"])}
        return cls(**_d)
    def __str__(self):
        return f"User({json.dumps(self._asdict(),indent=2,ensure_ascii=False)});"
    def to_json_dict(self):
        _d = self._asdict()
        for fn in ["nulabAccount"]:
            _d[fn] = _d[fn].to_json_dict()
        return _d
class nulabAccount(namedtuple("nulabAccount","nulabId name uniqueId")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
    def to_json_dict(self):
        _d = self._asdict()
        return _d
class Priority(namedtuple("Priority","id name")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
class Status(namedtuple("Status","id name projectId color displayOrder",defaults=["","",""])):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
    def to_json_dict(self):
        _d = self._asdict()
        return _d
class category(namedtuple("category","id name displayOrder")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
